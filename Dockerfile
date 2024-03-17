# 使用官方 Python 运行时作为父镜像
FROM python:3.8-slim

#时区设置为上海时区
ENV TZ=Asia/Shanghai

# 设置工作目录
WORKDIR /app

# 复制当前目录下的所有文件到工作目录
COPY . /app
#国内的镜像地址
# RUN pip3 install flask -i http://mirrors.aliyun.com/pypi/simple/ --trusted-host mirrors.aliyun.com

#RUN pip install --upgrade pip
# 安装依赖
RUN pip install --no-cache-dir -r requirements.txt

# 暴露端口
# EXPOSE 80

# 运行应用
CMD ["python", "app.py"]


#docker build -t chatgpt-on-wechat:v1.0.1 .
