# 将当前目录下的jar包复制到docker容器的/目录下
CMD ["./mvnw", "clean", "install", "-DskipTests", "--file", "pom.xml", "-docker"]

