#!/usr/bin/env bash
export DATA_DIR=/home/jiangwei/DataSet/airline2nd

export BERT_BASE_DIR=/home/jiangwei/bert/chinese_L-12_H-768_A-12

python3 run_classifier.py \
 --task_name=airline2nd \
 --do_train=true \
 --do_eval=true \
 --do_predict=false \
 --data_dir=$DATA_DIR/ \
 --vocab_file=$BERT_BASE_DIR/vocab.txt \
 --bert_config_file=$BERT_BASE_DIR/bert_config.json \
 --init_checkpoint=$BERT_BASE_DIR/bert_model.ckpt \
 --max_seq_length=256 \
 --train_batch_size=64 \
 --learning_rate=2e-5 \
 --num_train_epochs=10 \
 --output_dir=airline2nd_output


# --task_name=airline2nd --do_train=true --do_eval=true --do_predict=false --data_dir=C:\Works\Code\AnteLope\data --vocab_file=C:\Works\PretrainedModel\chinese_L-12_H-768_A-12\vocab.txt --bert_config_file=C:\Works\PretrainedModel\chinese_L-12_H-768_A-12\bert_config.json --init_checkpoint=C:\Works\PretrainedModel\chinese_L-12_H-768_A-12\bert_model.ckpt --max_seq_length=256 --train_batch_size=64 --learning_rate=2e-5 --num_train_epochs=3.0 --output_dir=airline2nd_output

# --task_name=airline2nd --do_train=false --do_eval=true --do_predict=false --data_dir=C:\Works\Code\AnteLope\data --vocab_file=C:\Works\PretrainedModel\chinese_L-12_H-768_A-12\vocab.txt --bert_config_file=C:\Works\PretrainedModel\chinese_L-12_H-768_A-12\bert_config.json --init_checkpoint=cnews_output\model.ckpt-4000 --max_seq_length=256 --train_batch_size=64 --learning_rate=2e-5 --num_train_epochs=3.0 --output_dir=airline2nd_output