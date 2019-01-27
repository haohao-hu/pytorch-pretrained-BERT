pip install zip unzip
pip install boto3
unzip ./rdc_dataset/train.zip

python rdc_classification.py \
  --task_name rdcd\
  --do_train \
  --do_eval \
  --do_lower_case \
  --data_dir rdc_dataset/ \
  --bert_model bert-large-uncased \
  --max_seq_length 70 \
  --train_batch_size 32 \
  --eval_batch_size 800 \
  --learning_rate 2.5e-4 \
  --num_train_epochs 5.0 \
  --output_dir models/rdcd_output/  > /artifacts/e5-lr2.5e-4-bs32.log
