#!/bin/sh

DATA_PATH='datasets/tut-backyard/'

SEQ_LENGHT=10

BATCH_SIZE=32

EPOCHS=200

NGPUS=1

SEQ1='day'

SEQ2='night'

CNN='vgg16'

MODEL_NAME="tut_${CNN}_lstm"

NIMGS=607

NCLASSES=597

python run.py train \
    --model_name $MODEL_NAME \
    --data_path $DATA_PATH \
    --ngpus $NGPUS \
    --batch_size $BATCH_SIZE \
    --seq_len $SEQ_LENGHT \
    --epochs $EPOCHS \
    --val_set $SEQ1 \
    --cnn_arch $CNN \
    --nimgs $NIMGS \
    --nclasses $NCLASSES

