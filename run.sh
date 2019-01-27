#pip install zip unzip
#apt-get install unzip
#pip install boto3
#tar -xvzf ./rdc_dataset/train.tar.gz
pip install --editable .
#pip install pytorch-pretrained-bert
#pip install pytorch-pretrained-bert
#git clone https://github.com/NVIDIA/apex.git && cd apex && python setup.py install --cuda_ext --cpp_ext
#cd ..
python rdc_classification.py \
  --task_name rdcd\
  --do_train \
  --do_eval \
  --do_lower_case \
  --data_dir rdc_dataset/ \
  --bert_model bert-large-uncased \
  --max_seq_length 160 \
  --train_batch_size 256 \
  --eval_batch_size 800 \
  --learning_rate 5e-4 \
  --num_train_epochs 5.0 \
  #--no_truncate \
  --output_dir models/rdcd_output/  > /artifacts/e5-lr5e-4-bs256.log

  #--fp16 \   
  #--loss_scale 128 > /artifacts/e5-lr2.5e-4-bs32.log
