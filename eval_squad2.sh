#!/usr/bin/env bash
export SQUAD_DIR=/home/jiangwei/work/DataSet/SQuAD_2.0

export BERT_BASE_DIR=/home/jiangwei/work/bert/cased_L-12_H-768_A-12

python3 $SQUAD_DIR/evaluate-v2.0.py $SQUAD_DIR/dev-v2.0.json ./squad2.0_output/predictions.json --na-prob-file ./squad2.0_output/null_odds.json

# # first run result:
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

# # second run results
# {
#   "exact": 72.52589909879559,
#   "f1": 75.45454198456264,
#   "total": 11873,
#   "HasAns_exact": 66.05937921727396,
#   "HasAns_f1": 71.92506359357503,
#   "HasAns_total": 5928,
#   "NoAns_exact": 78.97392767031118,
#   "NoAns_f1": 78.97392767031118,
#   "NoAns_total": 5945,
#   "best_exact": 72.56801145456078,
#   "best_exact_thresh": -2.9817402362823486,
#   "best_f1": 75.44611951340949,
#   "best_f1_thresh": -1.8947529792785645
# }
