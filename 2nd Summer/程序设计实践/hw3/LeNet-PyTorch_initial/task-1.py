#!/usr/bin/python3

"""
# -*- coding: utf-8 -*-

# @Time     : 2020/9/1 21:59
# @File     : task-1.py

"""
import torch
import torchvision

from utils import visualizer

if __name__ == '__main__':

    train_dataset = torchvision.datasets.MNIST(root='data/',
                                               train=True,
                                               transform=torchvision.transforms.ToTensor(),
                                               download=False)


    train_loader = torch.utils.data.DataLoader(dataset=train_dataset,
                                               batch_size=100,
                                               shuffle=True)
    print(type(train_loader))
    for i, (images, labels) in enumerate(train_loader):
        # visualize images
        visualizer.demo_display_specific_digit_combination(images, labels)
