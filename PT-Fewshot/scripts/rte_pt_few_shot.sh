export CUDA_VISIBLE_DEVICES=0,1,2,3,4,5,6,7
data_dir="/nlp/scr/lxuechen/data/FewGLUE_32dev/RTE"
output_dir="/nlp/scr/lxuechen/p-tuning/rte"

python3 cli.py \
--data_dir ${data_dir} \
--model_type albert \
--model_name_or_path albert-xxlarge-v2 \
--task_name rte \
--output_dir ${output_dir} \
--do_eval \
--do_train \
--pet_per_gpu_eval_batch_size 16 \
--pet_per_gpu_train_batch_size 2 \
--pet_gradient_accumulation_steps 1 \
--pet_max_seq_length 256 \
--pet_max_steps 3500 \
--warmup_steps 150 \
--pattern_ids 1 \
--learning_rate 1e-4 \
--overwrite_output_dir

