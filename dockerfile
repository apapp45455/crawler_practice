# 使用 Python 3.9的基礎映像
FROM python:3.9

# 建立工作目錄
WORKDIR /usr/src/app

# 複製當前目錄的所有檔案到工作目錄
COPY . .

# 需要將容器的窗口對到82，可以使用EXPOSE指令
EXPOSE 82

# 在容器啟動時執行命令以進入bash shell
CMD ["/bin/bash"]

# 建立映像檔
# docker build -t crawler-3.9 .

# 建立映像檔
# docker run -v //C/Users/apapp/Documents:/app -p 82:82 -it crawler-3.9