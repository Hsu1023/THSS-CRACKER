#!/usr/bin/python3

"""
# -*- coding: utf-8 -*-

# @Time     : 2020/8/28 11:22
# @File     : visualizer.py

"""
import cv2
import torch


def display_image(img, target_size=None):
    if target_size:
        ratio = target_size / max(img.shape[0], img.shape[1])
        interp = cv2.INTER_AREA
        img = cv2.resize(img, (int(img.shape[1] * ratio), int(img.shape[0] * ratio)), interpolation=interp)
    cv2.imshow("", img)
    cv2.waitKey(0)


def demo_display_single_image(image, label, predicted):
    image = image.squeeze(0).numpy()
    ratio = 240 / max(image.shape[0], image.shape[1])
    interp = cv2.INTER_AREA
    image = cv2.resize(image, (int(image.shape[1] * ratio), int(image.shape[0] * ratio)), interpolation=interp)

    cv2.imwrite(f"./label{label.item()}_predicted{predicted.item()}.jpg", image * 256)


def demo_display_specific_digit_combination(images, labels):
    assert images.shape[0] == labels.shape[0]

    # this is an example for retrieve digits image
    digit_image_dict = {}
    for i in range(0, labels.shape[0]):
        digit = int(labels[i].item())
        if digit not in digit_image_dict:
            digit_image_dict[digit] = images[i]

        if len(digit_image_dict.keys()) >= 10:
            break

    # build image according to requirement
    id_number = [2,0,2,0,0,1,0,1,0,8]
    target_img = torch.zeros(1,28,0)
    for i in id_number:
        target_img = torch.cat((target_img, digit_image_dict[i]), 2)
    target_img = target_img.numpy()
    target_img = target_img.transpose(1, 2, 0)
    display_image(target_img, target_size=240)


