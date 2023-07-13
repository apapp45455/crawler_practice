# 使用 Python 3.9 為基底映像
FROM python:3.9

# 設定工作目錄為 /app
WORKDIR /app

# 複製當前目錄下的所有文件和子目錄到 /app
COPY . .

# 指定要對外開放的端口號為 82
EXPOSE 82

# 在容器啟動時執行的命令
CMD ["/bin/bash"]

# 建立 Docker 映像
# docker build -t crawler-3.9 .

# 運行 Docker 容器，並將主機的 /path/to/host/dir 掛載到容器的 /app
# docker run -p 82:82 -v /G/PyETL:/app --name crawler -it crawler-3.9
