#!/bin/sh

DATA_PATH='datasets/nordland-sync-test/'

SEQ_LENGHT=10

BATCH_SIZE=16

EPOCHS=200

NGPUS=1

SEQ1='summer'

SEQ2='winter'

SEQ3='fall'

SEQ4='spring'

CNN='vgg16'

MODEL_NAME="nordland_sync_${CNN}_lstm"

NIMGS=28354

NCLASSES=28344

IMG_WIDTH=512

IMG_HEIGHT=256

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
    --nclasses $NCLASSES \
    --img_width $IMG_WIDTH \
    --img_height $IMG_HEIGHT \
