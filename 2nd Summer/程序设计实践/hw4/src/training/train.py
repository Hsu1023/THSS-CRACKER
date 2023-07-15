#!/usr/bin/python3

"""
# -*- coding: utf-8 -*-

# @Time     : 2020/8/28 11:04
# @File     : train.py

"""
from cProfile import label
from pickletools import optimize

import torch
import torchvision

from django.utils import timezone
from training.lenet import LeNet
import training.pre_process as pre_process
from training.models import Article as tasks
import matplotlib.pyplot as plt
import matplotlib
import os
os.environ["KMP_DUPLICATE_LIB_OK"]  =  "TRUE"

import threading
mutex = threading.Lock()


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

def evaluate(id, model, test_loader, device, criterion):
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
            total += labels.size(0)
            correct += (predicted == labels).sum().item()
        temp_log = 'Test Accuracy of the model is: {} %'.format(100 * correct / total)
        print(temp_log)
        temp = tasks.objects.filter(id=id)[0]
        temp = temp.log + temp_log + '\n'
        tasks.objects.filter(id=id).update(log=temp,finished_date=timezone.now())
        return loss / total, correct / total

def train(id, epochs, batch_size, learning_rate, model_type, optimizer_type, num_classes=10):
    # fetch data
    train_loader, test_loader = get_data_loader(batch_size)
    loss_data = {'train':[], 'vali': []}

    # Loss and optimizer
    device_type = 'cuda:0' if torch.cuda.is_available() else 'cpu'
    tasks.objects.filter(id=id).update(device=device_type)
    device = torch.device(device_type)
    model = LeNet(model_type, num_classes).to(device)
    criterion = torch.nn.CrossEntropyLoss()
    
    if optimizer_type == 'Adam':
        optimizer = torch.optim.Adam(model.parameters(), lr=learning_rate)
    else:
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
                temp_log = 'Epoch [{}/{}], Step [{}/{}], Loss: {:.4f}'.format(epoch + 1, epochs, i + 1, total_step, loss.item())
                print(temp_log)
                temp = tasks.objects.filter(id=id)[0]
                temp = temp.log + temp_log + '\n'
                tasks.objects.filter(id=id).update(log=temp)
                

        # evaluate after epoch train
        vali_avg_loss, acc= evaluate(id, model, test_loader, device, criterion)
        train_avg_loss = train_loss / total
        loss_data['vali'].append(vali_avg_loss)
        loss_data['train'].append(train_avg_loss)
        if epoch == epochs - 1:
            tasks.objects.filter(id=id).update(acc=acc)
    draw_plot(id,loss_data)

from pathlib import Path
def draw_plot(id,loss_data):
    mutex.acquire()
    BASE_DIR = Path(__file__).resolve().parent.parent
    matplotlib.use('svg')
    x1 = range(1, len(loss_data['train'])+1)
    y1 = loss_data['train']
    x2 = range(1, len(loss_data['vali'])+1)
    y2 = loss_data['vali']
    plt.plot(x1, y1, 'r-', label = 'train-loss')
    plt.plot(x2, y2, 'g-', label = 'validate-loss')
    plt.xlabel('epoch')
    plt.ylabel('loss')
    plt.legend()
    plt.savefig(r'%s/assets/loss_pic/loss_id_%d.jpg'%(BASE_DIR, id))
    plt.cla()
    mutex.release()