#pip install zip unzip
#apt-get install unzip
#pip install boto3
#tar -xvzf ./rdc_dataset/train.tar.gz
pip install --editable .
#pip install pytorch-pretrained-bert
#pip install pytorch-pretrained-bert
#git clone https://github.com/NVIDIA/apex.git && cd apex && python setup.py install --cuda_ext --cpp_ext
#cd ..

python /storage/pytorch-pretrained-BERT/run_lm_finetuning_rdcd.py \
  --bert_model bert-large-uncased \
  --do_train \
  --do_lower_case \
  --train_file /storage/pytorch-pretrained-BERT/rdc_whole_set.txt \
  --output_dir /storage/pytorch-pretrained-BERT/models/rdcd_fine_tune_lm_no_truncate_testing \
  --num_train_epochs 5.0 \
  --learning_rate 6e-5 \
  --train_batch_size 80 \
  --no_truncate \
  --max_seq_length 108 
  #--max_seq_length 164 #> /artifacts/e5-lr3e-5-bs64-bert-lm.log
  #--no_truncate \
  #--fp16 \   
  #--loss_scale 128 > /artifacts/e5-lr2.5e-4-bs32.log
