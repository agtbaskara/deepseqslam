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

for i in $SEQ1 $SEQ2
do
    python run.py val \
    --model_name $MODEL_NAME \
    --data_path $DATA_PATH \
    --ngpus $NGPUS \
    --batch_size $BATCH_SIZE \
    --seq_len $SEQ_LENGHT \
    --epochs $EPOCHS \
    --val_set $i \
    --cnn_arch $CNN \
    --nimgs $NIMGS \
    --nclasses $NCLASSES

done

