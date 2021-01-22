#!/usr/bin/env python
import gpt_2_simple as gpt2
import os
from rich import print

model_name = "124M"
if not os.path.isdir(os.path.join("models", model_name)):
	print(f"Downloading [bold magenta]{model_name}[/bold magenta] model...")
	gpt2.download_gpt2(model_name=model_name)

data_file="data.txt"

sess = gpt2.start_tf_sess()

gpt2.finetune(sess,
              data_file,
              model_name=model_name,
              steps=1000)

output = gpt2.generate(sess, return_as_list=True)[0]

print(f"[bold magenta]output text:[/bold magenta] {output}")
