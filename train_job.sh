#!/bin/bash
#SBATCH -p defq
#SBATCH -o logs/%j_%x.out
#SBATCH -e logs/%j_%x.err
#SBATCH -n 1
#SBATCH --gres=gpu:1
#SBATCH --job-name=sts_%x

source activate segment_then_splat
export LD_PRELOAD=/okyanus/users/mtuncel/.conda/envs/segment_then_splat/x86_64-conda-linux-gnu/lib/libstdc++.so.6

SCENE=$1

python /okyanus/users/mtuncel/Segment-then-Splat/train.py \
    -s /okyanus/users/mtuncel/datasets/hypernerf/$SCENE \
    --model_path /okyanus/users/mtuncel/Segment-then-Splat/output/$SCENE \
    --eval
