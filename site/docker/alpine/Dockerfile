# goto alpine folder build with command: docker build -t chongqing-shipping/alpine:3.11 .
FROM alpine:3.11

RUN set -ex \
	&& echo 'https://mirrors.aliyun.com/alpine/v3.11/main' > /etc/apk/repositories \
    && echo 'https://mirrors.aliyun.com/alpine/v3.11/community' >> /etc/apk/repositories \
    && apk add --no-cache bash \
    && rm -rf /usr/include

CMD ["bash"]