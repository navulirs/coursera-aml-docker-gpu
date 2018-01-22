# coursera-aml-docker-gpu

This project modified the original Dockerfile from https://github.com/ZEMUSHKA/coursera-aml-docker to make it compatible to tensorflow-gpu

The base image may or may not be compatible to your target GPU. This image is tested on Quadro P5000 on Ubuntu 16.04. Although P5000 is certified only for CUDA 6.1, it still works fine on CUDA 8.0. 

Refer to https://hub.docker.com/r/nvidia/cuda/ for other available CUDA images.
Refer to https://developer.nvidia.com/cuda-gpus for CUDA compatibility.

Requirements:

a) Machine with CUDA compatible NVIDIA GPU and enabled.

b) NVIDIA Drivers installed - 
     
      There are many websites provide guide on installing NVIDIA Drivers. A recommendation is to use install the driver if the operating system already provides a way to aquire the driver through its default means. As an example, in Ubuntu 16.04 LTE edition, NVIDIA driver can be installed by ensuring NVIDIA GPU is selected on the Settings --> Software Updates tab. IMO, his is easiest and safest method.
      
 A Caution:
 
  Noticed CUDA installation sometimes conflicts with the driver installation. To avoid this issue I chose not to perform CUDA installation directly on the base operating system and installed only within the docker containers. 

c) NVIDIA Docker Installed - https://github.com/NVIDIA/nvidia-docker

Build:

sudo nvidia-docker build . --tag coursera-aml-gpu

Test: 

sudo nvidia-docker run --rm coursera-aml-gpu nvidia-smi

Run: 

sudo nvidia-docker run -dit -p 8080:8080 --name coursera-aml coursera-aml-gpu

Todo:
Add Tensorboard





