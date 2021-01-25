# Accelerator accelerator

**Accelerate the IDEA ACCELERATOR by finding ideas from startup ideas. Great idea isn't it?**

using [GPT2-simple](https://github.com/minimaxir/gpt-2-simple)

warning: GPT2-simple supports Tensorflow 1.15 only!

## Hardware config

[Google Compute Engine + Nvidia A100 Tensor Core](https://cloud.google.com/compute/docs/gpus#a100-gpus)

runs on preemptive A100s ofc

## How to use

0. change your credential file in the `main.tf`

1. modify your Global GPU Quota to get `1` global GPU

2. `terraform plan`

3. `terraform apply`
