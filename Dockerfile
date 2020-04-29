# 该镜像需要依赖的基础镜像
FROM java:8
# 将当前目录下的jar包复制到docker容器的/目录下
RUN ll
RUN pwd
ADD show/target/generated-resources/appassembler/jsw/RadarWashers/DragonShow/ /usr/local/DragonShow/
# 声明服务运行在8080端口
EXPOSE 8080
# 指定docker容器启动时运行jar包
ENTRYPOINT ["/usr/local/DragonShow/bin/DragonShow", "start"]
# 指定维护者的名字
MAINTAINER yx
