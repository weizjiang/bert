#!/usr/bin/env bash
export SQUAD_DIR=/home/jiangwei/DataSet/SQuAD_2.0

export BERT_BASE_DIR=/home/jiangwei/bert/cased_L-12_H-768_A-12

python3 $SQUAD_DIR/evaluate-v2.0.py $SQUAD_DIR/dev-v2.0.json ./squad2.0_output/predictions.json --na-prob-file ./squad2.0_output/null_odds.json

# # get results like:
# {
#   "exact": 71.05196664701424,
#   "f1": 74.38518232024477,
#   "total": 11873,
#   "HasAns_exact": 70.95141700404858,
#   "HasAns_f1": 77.62740716738631,
#   "HasAns_total": 5928,
#   "NoAns_exact": 71.15222876366694,
#   "NoAns_f1": 71.15222876366694,
#   "NoAns_total": 5945,
#   "best_exact": 72.56801145456078,
#   "best_exact_thresh": -2.9817402362823486,
#   "best_f1": 75.44611951340949,
#   "best_f1_thresh": -1.8947529792785645
# }

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
  --null_score_diff_threshold=-1.8947529792785645
  