# docker-mask-rcnn

[Mask R-CNN](https://arxiv.org/abs/1703.06870)を利用するにあたり，以下の環境を整えるのが大変だったのでコンテナにしました

- keras==2.2.5
- tensorflow-gpu==1.15.0
- python3.6


> Mask R-CNN for Object Detection and Segmentation
> https://github.com/matterport/Mask_RCNN

# Usage

```
$ docker-compose build
$ docker-compose up -d
```