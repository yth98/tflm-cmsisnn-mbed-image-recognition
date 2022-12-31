# Image Recognition on STM32 Microcontrollers

## Prerequisites
### Install required deb packages
- `$ sudo apt install libcudnn8-dev`
- `$ sudo apt install ninja-build`

### Install Arm GNU Toolchain 11.2
#### In order to utilize `newlib-nano` via the [deb package](https://askubuntu.com/a/1411203)
- `$ sudo apt purge gcc-arm-none-eabi && sudo apt autoremove`
- `$ wget https://gitlab.com/api/v4/projects/36571310/jobs/2519076382/artifacts/gcc-arm-none-eabi-11.2-2022.02-x86_64.deb`
- `$ sudo dpkg -i gcc-arm-none-eabi-11.2-2022.02-x86_64.deb`

### Create virtual environment
- `$ pip install virtualenv`
- `$ virtualenv -p python3.8 venv`
- `$ source ./venv/bin/activate`

### Install Python packages
- `$ pip install -r requirements.txt`

## Model Training
### Train MobileNetV3 on CIFAR-10 with PyTorch
- `$ jupyter nbconvert --execute mobilenetv3.ipynb`

## Compilation
- `$ cp -f models/image_recognition_model.cc image_recognition/image_recognition_model/`
- `$ chmod u+x clean.sh`
- `$ chmod u+x generate_cmake_files.sh`
- `$ bash ./setup.sh`
- `$ bash ./test_performance.sh 0 DISCO_H747I GCC_ARM`
- Deploy `cmake_build/DISCO_H747I/release/GCC_ARM/mbed-tflm-image-recognition.bin` to STM32H747I-DISCO
