# 该镜像需要依赖的基础镜像
FROM adoptopenjdk/openjdk11:alpine AS builder
# 将当前目录下的jar包复制到docker容器的/目录下
COPY show/target/dragon-show-0.0.1.jar /opt/dragon-lake/show/dragon-show-0.0.1.jar
# 声明服务运行在8080端口
EXPOSE 8080
# 指定docker容器启动时运行jar包
ENTRYPOINT ["java", "-jar", "/opt/dragon-lake/show/dragon-show-0.0.1.jar"]
# 指定维护者的名字
MAINTAINER yx
