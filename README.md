# vLLMConfig

A local environment setup framework designed for configuring and managing large language models (LLMs) using VLLM. This project simplifies the deployment process by providing efficient and scalable settings tailored for on-premise inference tasks, ensuring optimal performance and data security.

---

## 簡介

這份專案提供了一鍵部署的容器化解決方案，將 Hugging Face (HF) 的 LLM 模型包到 Docker 映像檔中，並針對封閉網路環境優化。

- 預設支持 vLLM 的 OpenLLM API 格式。
- 對推理時的 API 和容器穩定性進行了必要的調整。

---

## 特點

- **🛠️ 一鍵模型包裹**：快速將 Hugging Face 上的模型下載並包裹到映像檔中，適用於無法直接訪問外部網路的封閉環境。
- **🌐 預設 OpenLLM API 格式**：支持與 vLLM API 的即時集成，無需額外設定。
- **🚦 容器穩定性保障**：配置相關參數，避免容器因過量請求導致的服務中斷。

---

## 文件結構

```
.
├── Dockerfile              # Image 打包文件
├── docker-compose.yml      # 啟用參數設定
└── README.md               # 說明文件
```
