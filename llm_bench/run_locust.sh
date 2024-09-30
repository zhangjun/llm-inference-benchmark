model_name=moe_as_en_mixtral_struct_mem_v1_0626_fp8
service_name=test_moe_as_mem_v1_0626_fp8_vllm
token='NjRhMWVhMDQ3NzllYTMxYjEyNGJmZTY2YWI3ZWNmOWU4ZTAwYzBkYg=='

service_name=online_70b_as_higgs_sft_v11_0617_silicon
token='NzMzZDI0YjllNDk3YTY0ZTU3OGJmNWUzODQ0ZWYyNmVmMjk3M2U5Ng=='

service_name=online_moe_as_en_enhence_v1_0724_silicon_fp8
model_name=moe_as_en_enhence_v1_0724_silicon_fp8
token='ZDlmOWI4YjIzNDk4YTQ0ZGExMmEzYWM1MmUxMDM4ZThjYzRiNTY3OA=='

service_name=test_as_llama_silicon_fp8
model_name=llama_silicon_fp8
token='ZDQxY2MwZjRiNGQ0OTBhYTQwNTYyMWRjYWYwZTNjNDNhOTZkYzJmOA=='

service_name=test_8b_as_lama3_sglang_server0
token='MGFiMDc1YzdmZGYwYTBiYTU0MjM5ZDk4NWVkZTRlODY1ZTJlZjkzZA=='

# service_name="test_8b_as_lama3_sglang_server"
# token='MmFiMjkyZTcxNDZkODMwNDM5YTY4NTUxYWExNzc0Y2U2N2QxMjg2NA=='

# service_name=online_online_70b_as_higgs_sft_v11_0617_vllm
# model_name=70b_as_higgs_sft_v11_0617_fp8
# token='MjljNzljYTBkMTg5NGZlMDJkNjY0ZTUxY2ZmOGYyNjA4OTM2MzZmNQ=='

# locust --prompt-randomize --prompt-text "@llama3_prompt.txt" --qps 6 -u 1000 -r 1000 -t 60s --provider openai -H http://1893706806886638.cn-beijing.pai-eas.aliyuncs.com/api/predict/${service_name} -p 1450 -o 512 --api-key $token --model=$model_name --no-chat --stream --show-response
# # locust --prompt-randomize --prompt-text "@llama3_prompt.txt" --qps 6 -u 1000 -r 1000 -t 60s --provider openai -H http://1893706806886638.cn-beijing.pai-eas.aliyuncs.com/api/predict/${service_name} -p 1450 -o 512 --api-key $token --model=$model_name --no-chat --show-response


# for maas, provide model and provider
api_key='2322572d2fe03bca7eb32d6dbe4e473c'        # 这里需要替换你的APIKey
api_secret='6abbcfa48c8b0528bf7a2b19081f087f624ff1f1af639b00'  # 这里需要替换你的APISecret
model_name='8b_as_en_llama31_mem_v3_0801'
model_name='llama3_as_en_v3_0807_q'
model_name='llama3_as_en_12b_mistral_v2_0929_w'
locust --prompt-randomize --prompt-text "@mistral_nemo_12b.txt" --qps 3.5 -u 1000 -r 1000 -t 60s --provider maas -H https://api-maas.singularity-ai.com/ -p 1450 -o 40 --model ${model_name} --api-key ${api_key} --api-secret ${api_secret} --no-chat --stream --show-response