export CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7

data_dir="/nlp/scr/lxuechen/data/SuperGLUE/MultiRC"
output_dir="/nlp/scr/lxuechen/p-tuning/nonprivate_042021/multirc/0"

python3 cli.py \
  --data_dir "${data_dir}" \
  --model_type albert \
  --model_name_or_path albert-xxlarge-v2 \
  --task_name multirc \
  --output_dir "${output_dir}" \
  --do_eval \
  --do_train \
  --pet_per_gpu_eval_batch_size 8 \
  --pet_per_gpu_train_batch_size 1 \
  --pet_gradient_accumulation_steps 16 \
  --pet_num_train_epochs 1 \
  --pet_max_seq_length 512 \
  --pet_max_steps 250 \
  --pattern_ids 1 \
  --learning_rate 1e-4 \
  --overwrite_output_dir
