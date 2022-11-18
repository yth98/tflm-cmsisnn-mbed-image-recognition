#!/bin/bash

#
# Copyright (c) 2019-2021 Arm Limited. All rights reserved.
#
# SPDX-License-Identifier: Apache-2.0
#
# Licensed under the Apache License, Version 2.0 (the License); you may
# not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an AS IS BASIS, WITHOUT
# WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

rm -rf tflite-micro
rm -rf tensorflow
rm -rf mbed-os
rm -rf BSP
rm -rf BSP_DISCO_H747I
rm -f test_batch.bin
rm -f image_recognition/50_cifar_images.h
rm -rf cmake_build

