#!/bin/bash

host_dir_synthetic_training_config=$HOME/Kevin_MA/mmlab3d/mmdetection3d/configs/synthetic_training_config
container_dir_synthetic_training_config=/mmdetection3d/configs/synthetic_training_config

host_dir_synthetic_data=$HOME/Synthetic_Datasets
container_dir_synthetic_data=$HOME/Synthetic_Datasets

host_dir_training_data=$HOME/Synthetic_Datasets/mvxnet-datasets/baseline-datasets/baseline_100_percent
container_dir_training_data=/mmdetection3d/data/kitti

docker run -it --rm --shm-size=8g --gpus all -v $host_dir_training_data:$container_dir_training_data -v $host_dir_synthetic_training_config:$container_dir_synthetic_training_config -v $host_dir_synthetic_data:$container_dir_synthetic_data mmdetection3d:bertrandt
