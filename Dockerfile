# 使用官方Nginx镜像作为基础
FROM nginx:latest

# 维护者信息（可选）
LABEL maintainer="your.name@example.com"

# 将本地站点文件复制到容器中的默认网站目录
# COPY ./html /usr/share/nginx/html

# 暴露80端口（HTTP）和443端口（HTTPS）
EXPOSE 80
EXPOSE 443

# 使用exec形式启动Nginx（保持容器运行）
CMD ["nginx", "-g", "daemon off;"]
