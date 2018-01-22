# coursera-aml-docker-gpu

This project modified the original Dockerfile from https://github.com/ZEMUSHKA/coursera-aml-docker to make it compatible to tensorflow-gpu

The base image may or may not be compatible to your target GPU. This image is tested on Quadro P5000 on Ubuntu 16.04. Although P5000 is certified only for CUDA 6.1, it still works fine on CUDA 8.0. 

Refer to https://hub.docker.com/r/nvidia/cuda/ for other available CUDA images.
Refer to https://developer.nvidia.com/cuda-gpus for CUDA compatibility.

Requirements:
a) Machine with CUDA compatible NVIDIA GPU and enabled.
b) NVIDIA Drivers installed. 
c) NVIDIA Docker Installed - https://github.com/NVIDIA/nvidia-docker

Build:

sudo nvidia-docker build . --tag coursera-aml-gpu

Test: 

sudo nvidia-docker run --rm coursera-aml-gpu nvidia-smi

Run: 

sudo nvidia-docker run -dit -p 8080:8080 --name coursera-aml coursera-aml-gpu

Todo:
Add Tensorboard





