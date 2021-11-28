export BERT_BASE_DIR=C:/Study/MelbUni/COMP90042/Project1/bert/cased_L-12_H-768_A-12
export MY_DATASET=C:/Study/MelbUni/COMP90042/Project1/bert/data

python run_classifier.py \
  --task_name=rumour \
  --do_train=true \
  --do_eval=true \
  --dopredict=true \
  --do_lower_case=False \
  --data_dir=$MY_DATASET \
  --vocab_file=$BERT_BASE_DIR/vocab.txt \
  --bert_config_file=$BERT_BASE_DIR/bert_config.json \
  --init_checkpoint=$BERT_BASE_DIR/bert_model.ckpt \
  --max_seq_length=256 \
  --train_batch_size=32 \
  --learning_rate=5e-5 \
  --num_train_epochs=2.0 \
  --output_dir=/tmp/rumour_output/
