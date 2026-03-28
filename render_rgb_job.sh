#!/bin/bash
#SBATCH -p defq
#SBATCH -o render_rgb_%j.out
#SBATCH -e render_rgb_%j.err
#SBATCH -n 2
#SBATCH --gres=gpu:1

source activate segment_then_splat
export LD_PRELOAD=/okyanus/users/mtuncel/.conda/envs/segment_then_splat/x86_64-conda-linux-gnu/lib/libstdc++.so.6

python /okyanus/users/mtuncel/Segment-then-Splat/render.py \
    -m /okyanus/users/mtuncel/Segment-then-Splat/output/torchocolate \
    --mode render \
    --skip_train
