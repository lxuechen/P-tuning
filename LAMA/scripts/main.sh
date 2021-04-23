#!/bin/bash

# Megatron seems to have failed.
python -m LAMA.cli \
  --model_name "bert-base-cased" \
  --data_dir "/nlp/scr/lxuechen/data/LAMA" \
  --out_dir "/nlp/scr/lxuechen/test-LAMA"
