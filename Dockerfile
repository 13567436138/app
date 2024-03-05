# 假设您的GRPC应用程序基于Alpine Linux
FROM alpine:3.12
# 安装基本网络工具（可选）
RUN apk add --no-cache curl
# 下载grpc-health-probe可执行文件
RUN curl -sL https://github.com/grpc-ecosystem/grpc-health-probe/releases/download/v0.4.6/grpc-health-probe-linux-amd64 -o /bin/grpc-health-probe && \
    chmod +x /bin/grpc-health-probe
# 添加您的服务二进制文件（这里是示例路径）
COPY my-grpc-service /bin/my-grpc-service
# 运行您的GRPC服务
CMD ["/bin/my-grpc-service"]

