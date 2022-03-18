#FROM nvidia/cuda:11.4.0-cudnn8-devel-ubuntu20.04
#FROM tensorflow/tensorflow:latest-gpu
FROM nvidia/cuda:11.0-cudnn8-devel-ubuntu18.04-rc

RUN apt update \
    && apt install -y \
    wget \
    git \
    curl \
    unzip \
    vim \
    sudo \
    python3 \
    python3-pip

#opencvを利用する場合は以下のライブラリをインストールする
#libopencv-dev をインストールする場合はかなり時間を要するので個別対応するのがおすすめ
#RUN apt install -y libopencv-dev 
RUN apt-get -y install libgl1-mesa-dev

COPY requirements.txt /tmp/
RUN python3 -m pip install  --upgrade pip  
RUN python3 -m pip install setuptools wheel \
    && python3 -m pip install --no-cache-dir -r /tmp/requirements.txt
