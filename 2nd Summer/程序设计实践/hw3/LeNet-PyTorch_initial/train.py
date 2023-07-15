#!/usr/bin/python3

"""
# -*- coding: utf-8 -*-

# @Time     : 2020/8/28 11:04
# @File     : train.py

"""
import argparse
from cProfile import label

import torch
import torchvision

from models.lenet import LeNet
from utils import pre_process
import matplotlib.pyplot as plt
from utils import visualizer


def get_data_loader(batch_size):
    # MNIST dataset
    train_dataset = torchvision.datasets.MNIST(root='data/',
                                               train=True,
                                               transform=pre_process.data_augment_transform(),
                                               download=True)

    test_dataset = torchvision.datasets.MNIST(root='data/',
                                              train=False,
                                              transform=pre_process.normal_transform())

    # Data loader
    train_loader = torch.utils.data.DataLoader(dataset=train_dataset,
                                               batch_size=batch_size,
                                               shuffle=True)

    test_loader = torch.utils.data.DataLoader(dataset=test_dataset,
                                              batch_size=batch_size,
                                              shuffle=False)
    return train_loader, test_loader


def draw_wrong_case(predicted, labels, images):
    if(len(draw_wrong_case.num_list) >= 5):
        return
    labels_ = labels.cpu()
    images_ = images.cpu()
    predicted_ = predicted.cpu()
    index_list = (predicted != labels).nonzero(as_tuple = False).cpu().squeeze(1).tolist()
    for index in index_list:
        if(len(draw_wrong_case.num_list) >= 5):
            return
        if labels_[index] not in draw_wrong_case.num_list: # draw_wrong_case.num_list is initialized in main function
            draw_wrong_case.num_list.append(labels_[index])
            visualizer.demo_display_single_image(images_[index], labels_[index], predicted_[index])

def evaluate(model, test_loader, device, criterion, epoch, epochs):
    model.eval()
    with torch.no_grad():
        correct = 0
        total = 0
        loss = 0
        for images, labels in test_loader:
            images = images.to(device)
            labels = labels.to(device)
            outputs = model(images)
            loss += criterion(outputs, labels).cpu().item()
            _, predicted = torch.max(outputs.data, 1)
            if(epoch >= epoch * 2 / 3 and (predicted == labels).sum().item() != labels.size(0)):
                draw_wrong_case(predicted, labels, images)
            total += labels.size(0)
            correct += (predicted == labels).sum().item()
        print('Test Accuracy of the model is: {} %'.format(100 * correct / total))
        return loss / total

def save_model(model, save_path='lenet.pth'):
    ckpt_dict = {
        'state_dict': model.state_dict()
    }
    torch.save(ckpt_dict, save_path)


def train(epochs, batch_size, learning_rate, num_classes):

    # fetch data
    train_loader, test_loader = get_data_loader(batch_size)
    loss_data = {'train':[], 'vali': []}

    # Loss and optimizer
    device = torch.device('cuda:0' if torch.cuda.is_available() else 'cpu')
    model = LeNet(num_classes).to(device)
    criterion = torch.nn.CrossEntropyLoss()
    
    #optimizer = torch.optim.Adam(model.parameters(), lr=learning_rate)
    optimizer = torch.optim.SGD(model.parameters(), lr=learning_rate)

    # start train
    total_step = len(train_loader)
    for epoch in range(epochs):
        total = 0
        train_loss = 0
        for i, (images, labels) in enumerate(train_loader):

            # get image and label
            images = images.to(device)
            labels = labels.to(device)

            # Forward pass
            outputs = model(images)
            loss = criterion(outputs, labels)
            
            # Backward and optimize
            optimizer.zero_grad()
            loss.backward()
            optimizer.step()

            train_loss += loss.cpu().item()
            total += labels.size(0)

            if (i + 1) % 100 == 0:
                print('Epoch [{}/{}], Step [{}/{}], Loss: {:.4f}'
                      .format(epoch + 1, epochs, i + 1, total_step, loss.item()))

        # evaluate after epoch train
        vali_avg_loss = evaluate(model, test_loader, device, criterion,epoch, epochs)
        train_avg_loss = train_loss / total
        loss_data['vali'].append(vali_avg_loss)
        loss_data['train'].append(train_avg_loss)

    # save the trained model
    save_model(model, save_path='lenet.pth')
    return model, loss_data


def parse_args():
    parser = argparse.ArgumentParser()
    parser.add_argument('--epochs', type=int, default=10)
    parser.add_argument('--batch-size', type=int, default=256)
    parser.add_argument('--lr', type=float, default=0.001)
    parser.add_argument('--num_classes', type=int, default=10)
    args = parser.parse_args()
    return args

def draw_plot(loss_data):
    x1 = range(len(loss_data['train']))
    y1 = loss_data['train']
    x2 = range(len(loss_data['vali']))
    y2 = loss_data['vali']
    plt.plot(x1, y1, 'r-', label = 'train-loss')
    plt.plot(x2, y2, 'g-', label = 'validate-loss')
    plt.xlabel('epoch')
    plt.ylabel('loss')
    plt.legend()
    plt.show()

if __name__ == '__main__':
    args = parse_args()
    draw_wrong_case.num_list = []
    model, loss_data = train(args.epochs, args.batch_size, args.lr, args.num_classes)
    draw_plot(loss_data)