#!/usr/bin/python3

"""
# -*- coding: utf-8 -*-

# @Time     : 2020/8/28 11:10
# @File     : inference.py

"""
import argparse
import os
import cv2
import torch
import numpy as np

from models.lenet import LeNet


def pre_process(img, device):
    img = cv2.resize(img, (28, 28))
    img = cv2.cvtColor(img, cv2.COLOR_RGB2GRAY)
    img = img / 255
    img = np.ascontiguousarray(img)
    img = torch.from_numpy(img).to(device)
    img = img.float()
    img = img.unsqueeze(0)
    if img.ndimension() == 3:
        img = img.unsqueeze(0)
    return img


def inference(model, img):
    device = torch.device('cuda:0' if torch.cuda.is_available() else 'cpu')
    img = pre_process(img, device)
    model.to(device)
    model.eval()
    preds = model(img)
    # preds is the outputs for a batch
    label = preds[0].argmax()
    return label


def parse_args():
    parser = argparse.ArgumentParser()
    parser.add_argument('--num_classes', type=int, default=10)
    parser.add_argument('--image_path', type=str, default='data/test_data/0.jpg')
    parser.add_argument('--model_path', type=str, default='lenet.pth')
    args = parser.parse_args()
    return args


if __name__ == '__main__':

    args = parse_args()

    # load pretrained model
    model = LeNet(args.num_classes)
    if not os.path.exists(args.model_path):
        raise ValueError(f'model_path is invalid: {args.model_path}')
    load_dict = torch.load(args.model_path)
    model.load_state_dict(load_dict['state_dict'])

    if not os.path.exists(args.image_path):
        raise ValueError(f'image_path is invalid: {args.image_path}')
    img = cv2.imread(args.image_path, )
    label = inference(model, img)

    cv2.putText(img, 'pred: ' + str(label.item()), (10, 20), 1, 1, (0, 255, 255), thickness=1, lineType=cv2.LINE_AA)
    cv2.imshow("", img)
    cv2.waitKey(0)
    print(f'inference label is: {label}')