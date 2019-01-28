!python -m spacy download en_core_web_lg

import csv
import spacy
import en_core_web_lg
import os

def read_tsv(cls, *input_file, quotechar=None, filedelimiter="\t",only_title=False):
    """Reads a tab separated value file."""
    lines = []
    for inputf in input_file:
        with open(inputf, "r", encoding='utf-8') as f:
            reader = csv.reader(f, delimiter=filedelimiter, quotechar=quotechar)

            for line in reader:
                if only_title:
                    lines.append(line[0])
                else:
                    lines.append(line)
        return lines

nlp=en_core_web_lg.load()
data_dir="rdc_dataset"
all_lines=read_tsv(os.path.join(data_dir, "train.tsv"),os.path.join(data_dir, "val.tsv")
                           ,os.path.join(data_dir, "rdc-catalog-gold.tsv"), "whole dataset (train,test and dev)"
,only_title=True)

with open("rdc_whole_set.txt", "w", encoding='utf-8') as f:
    for line in all_lines:
        doc=nlp(line)
        for sentence in doc.sents:
            f.write(sentence.text+"\n")
        f.write("\n")