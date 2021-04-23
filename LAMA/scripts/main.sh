#!/bin/bash

relation_id=${1:-"P101"}
epochs=${2:-"100"}

# Megatron seems to have failed.
python -m LAMA.cli \
  --model_name "bert-base-cased" \
  --data_dir "/nlp/scr/lxuechen/data/LAMA" \
  --out_dir "/nlp/scr/lxuechen/test-LAMA" \
  --relation_id ${relation_id} \
  --epochs ${epochs}
