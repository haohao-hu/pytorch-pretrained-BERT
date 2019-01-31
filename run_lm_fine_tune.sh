#pip install zip unzip
#apt-get install unzip
#pip install boto3
#tar -xvzf ./rdc_dataset/train.tar.gz
pip install --editable .
pip install ftfy
#pip install pytorch-pretrained-bert
#pip install pytorch-pretrained-bert
#git clone https://github.com/NVIDIA/apex.git && cd apex && python setup.py install --cuda_ext --cpp_ext
#cd ..

#python /storage/pytorch-pretrained-BERT/run_lm_finetuning_rdcd.py \
python run_lm_finetuning_rdcd.py \
  --bert_model bert-large-uncased \
  --do_train \
  --do_lower_case \
  --train_file /storage/pytorch-pretrained-BERT/rdc_whole_set_with_unknown_category_in_va_te.tsv \
  --output_dir /storage/pytorch-pretrained-BERT/models/rdcd_fine_tune_lm_testing_86_7 \
  --num_train_epochs 5.0 \
  --learning_rate 3e-5 \
  --train_batch_size 32 \
  --max_seq_length 325 \
  --classes_file /storage/pytorch-pretrained-BERT/rdc_dataset/classes.txt \
  --on_memory \
  --with_category  > /artifacts/e5-lr3e-5-bs32-msl325-bert-lm-lg-2.log
  #--max_seq_length 164 #> /artifacts/e5-lr3e-5-bs64-bert-lm.log
  #--no_truncate \ --no_truncate \
  #--fp16 \   
  #--loss_scale 128 > /artifacts/e5-lr2.5e-4-bs32.log
