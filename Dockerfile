FROM vllm/vllm-openai

# 更新系統並安裝必要工具，然後清理暫存檔案以縮小映像大小
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    git \
    git-lfs && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# 下載模型並重命名
# https://huggingface.co/Qwen/Qwen2.5-Coder-1.5B project_name=Qwen, model_name=Qwen2.5-Coder-1.5B
RUN mkdir -p /mnt/model && \
    git clone https://huggingface.co/[project_name/model_name] /mnt/model/[model_name]

# 設定工作目錄
WORKDIR /workspace
