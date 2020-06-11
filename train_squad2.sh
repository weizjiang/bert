#!/usr/bin/env bash
export SQUAD_DIR=/home/jiangwei/DataSet/SQuAD_2.0

export BERT_BASE_DIR=/home/jiangwei/bert/cased_L-12_H-768_A-12

python3 run_squad.py \
  --vocab_file=$BERT_BASE_DIR/vocab.txt \
  --bert_config_file=$BERT_BASE_DIR/bert_config.json \
  --init_checkpoint=$BERT_BASE_DIR/bert_model.ckpt \
  --do_train=True \
  --train_file=$SQUAD_DIR/train-v2.0.json \
  --do_predict=True \
  --predict_file=$SQUAD_DIR/dev-v2.0.json \
  --train_batch_size=64 \
  --learning_rate=3e-5 \
  --num_train_epochs=2.0 \
  --max_seq_length=384 \
  --doc_stride=128 \
  --output_dir=squad2.0_output \
  --use_tpu=False \
  --version_2_with_negative=True

# --vocab_file=C:\Works\PretrainedModel\cased_L-12_H-768_A-12\vocab.txt --bert_config_file=C:\Works\PretrainedModel\cased_L-12_H-768_A-12\bert_config.json --init_checkpoint=C:\Works\PretrainedModel\cased_L-12_H-768_A-12\bert_model.ckpt --do_train=True --train_file=C:\Works\DataSet\SQuAD_2.0\train-v2.0.json --do_predict=True --predict_file=C:\Works\DataSet\SQuAD_2.0\dev-v2.0.json --train_batch_size=64 --learning_rate=3e-5 --num_train_epochs=2.0 --max_seq_length=384 --doc_stride=128 --output_dir=squad2.0_output --use_tpu=False --version_2_with_negative=True
