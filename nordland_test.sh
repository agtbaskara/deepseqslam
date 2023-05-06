#!/bin/sh

DATA_PATH='datasets/nordland-sync/'

SEQ_LENGHT=10

BATCH_SIZE=32

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

for i in $SEQ1 $SEQ2 $SEQ3 $SEQ4
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
    --nclasses $NCLASSES

done

