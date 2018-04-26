#!/bin/sh
#
#SBATCH --verbose
#SBATCH --job-name=pre_hi
#SBATCH --output=pre_hi_b8_max5_%j.out
#SBATCH --error=pre_hi_b8_max5_%j.err
#SBATCH --time=24:00:00
#SBATCH --mem=16GB
#SBATCH --gres=gpu:1
#SBATCH --pa333rtition=p1080_4
 
cd /home/yhh303/AI-writer_Data2Doc/train/ 
module load pytorch/python3.6/0.3.0_4
python3 -u train.py
