#!/usr/bin/python3

"""
# -*- coding: utf-8 -*-

# @Time     : 2020/8/28 11:04
# @File     : lenet.py

"""

import torch


class LeNet(torch.nn.Module):
    def __init__(self, model_type='MLP', num_classes=10):
        super(LeNet, self).__init__()
        self.model_type = model_type
        if model_type == 'LeNet':
            self.layer1 = torch.nn.Sequential(
                torch.nn.Conv2d(1, 16, kernel_size=5, stride=1, padding=2),
                torch.nn.BatchNorm2d(16),
                torch.nn.ReLU(),
                torch.nn.MaxPool2d(kernel_size=2, stride=2))
            self.layer2 = torch.nn.Sequential(
                torch.nn.Conv2d(16, 32, kernel_size=5, stride=1, padding=2),
                torch.nn.BatchNorm2d(32),
                torch.nn.ReLU(),
                torch.nn.MaxPool2d(kernel_size=2, stride=2))
            self.layer3 = torch.nn.Sequential(
                torch.nn.Conv2d(32, 64, kernel_size=5, stride=1, padding=2),
                torch.nn.BatchNorm2d(64),
                torch.nn.ReLU(),
                torch.nn.MaxPool2d(kernel_size=4, stride=1))
            self.fc = torch.nn.Linear(4 * 4 * 64, num_classes)
        else:
            self.mlp = torch.nn.Sequential(
                torch.nn.Flatten(),
                torch.nn.Linear(28 * 28, 14 * 14),
                torch.nn.ReLU(),
                torch.nn.Dropout(0.5),
                torch.nn.Linear(14 * 14, 7 * 7),
                torch.nn.ReLU(),
                torch.nn.Dropout(0.5),
                torch.nn.Linear(7 * 7, num_classes)
            )

    def forward(self, x):
        
        if self.model_type == 'LeNet':
            out = self.layer1(x)
            out = self.layer2(out)
            out = self.layer3(out)
            out = out.reshape(out.size(0), -1)
            out = self.fc(out)
        else:
            out = self.mlp(out)
        return out