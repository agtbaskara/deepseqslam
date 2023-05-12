#!/bin/sh

DATA_PATH='datasets/carla-town02/'

SEQ_LENGHT=10

BATCH_SIZE=16

EPOCHS=200

NGPUS=1

SEQ1='clearnoon'

SEQ2='clearnight'

SEQ3='cloudysunset'

SEQ4='hardrainnoon'

SEQ5='wetcloudynoon'

CNN='vgg16'

MODEL_NAME="carla_town02_${CNN}_lstm"

NIMGS=793

NCLASSES=783

IMG_WIDTH=512

IMG_HEIGHT=256

for i in $SEQ1 $SEQ2
do
    echo $i
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
    --nclasses $NCLASSES \
    --img_width $IMG_WIDTH \
    --img_height $IMG_HEIGHT \
done
