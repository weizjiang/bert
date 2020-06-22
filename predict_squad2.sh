#!/usr/bin/env bash
export SQUAD_DIR=/home/jiangwei/work/DataSet/SQuAD_2.0

export BERT_BASE_DIR=/home/jiangwei/work/bert/cased_L-12_H-768_A-12

python3 run_squad.py \
  --vocab_file=$BERT_BASE_DIR/vocab.txt \
  --bert_config_file=$BERT_BASE_DIR/bert_config.json \
  --init_checkpoint=$BERT_BASE_DIR/bert_model.ckpt \
  --do_train=False \
  --train_file=$SQUAD_DIR/train-v2.0.json \
  --do_predict=True \
  --predict_file=$SQUAD_DIR/dev-v2.0.json \
  --train_batch_size=24 \
  --learning_rate=3e-5 \
  --num_train_epochs=2.0 \
  --max_seq_length=384 \
  --doc_stride=128 \
  --output_dir=squad2.0_output \
  --use_tpu=False \
  --version_2_with_negative=True \
  --do_lower_case=False \
  --null_score_diff_threshold=-1.8947529792785645
