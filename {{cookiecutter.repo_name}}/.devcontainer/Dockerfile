FROM nvidia/cuda:11.2.2-cudnn8-runtime-ubuntu20.04

ENV PATH="${PATH}:/home/docker/.local/bin"

RUN apt-get update && \
    apt-get install -y sudo

# Add (and switch to) new 'docker' user
RUN groupadd -g 110 usergroup
RUN adduser --disabled-password --gecos '' docker
RUN adduser docker sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers
USER docker

# Create workspace directory
RUN mkdir -p /home/docker/workspace/

# Install Software Properties Common
RUN sudo apt-get update && \
    sudo apt-get install -y software-properties-common

# Install Git, Python, and Pip
RUN sudo add-apt-repository ppa:deadsnakes/ppa && \
    sudo apt-get update && \
    sudo apt-get install -y git python3.10 python3.10-dev python3.10-distutils python3-pip 

# Install virtualenv
RUN pip3 install virtualenv

# Set the working directory
WORKDIR /home/docker/workspace/