#!/bin/bash
VCTK_DATASET_DIR="/home/tiger/datasets/vctk"
MUSDB18_DATASET_DIR="/home/tiger/my_code_2019.12-/python/music_source_separation/datasets/musdb18"

SAMPLE_RATE=44100
CHANNELS=2
EVLUATION_AUDIOS_DIR="${WORKSPACE}/evaluation_audios/vctk-musdb18/sr=${SAMPLE_RATE}_ch=${CHANNELS}"

python3 bytesep/dataset_creation/evaluation/vctk-musdb18.py create_evaluation \
    --vctk_dataset_dir=$VCTK_DATASET_DIR \
    --musdb18_dataset_dir=$MUSDB18_DATASET_DIR \
    --evaluation_audios_dir=$EVLUATION_AUDIOS_DIR \
    --sample_rate=$SAMPLE_RATE \
    --channels=$CHANNELS
    