# 基礎映像
FROM python:3.10-slim

# 設定工作目錄
WORKDIR /app

# 複製依賴檔
COPY requirements.txt .

# 安裝依賴
RUN pip install --no-cache-dir -r requirements.txt

# 複製程式碼
COPY app/ ./app

# 設定工作目錄
WORKDIR /app

# 入口點
CMD ["python", "main.py"]