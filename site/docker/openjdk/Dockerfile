# goto openjdk folder build with command: docker build -t chongqing-shipping/openjdk:11.0.5-jre-alpine3.11 .
FROM private.registry.frontier.com/chongqing-shipping/alpine:3.11

# A few reasons for installing distribution-provided OpenJDK:
#
#  1. Oracle.  Licensing prevents us from redistributing the official JDK.
#
#  2. Compiling OpenJDK also requires the JDK to be installed, and it gets
#     really hairy.
#
#     For some sample build times, see Debian's buildd logs:
#       https://buildd.debian.org/status/logs.php?pkg=openjdk-8

# Default to UTF-8 file.encoding
ENV LANG C.UTF-8

# add a simple script that can auto-detect the appropriate JAVA_HOME value
# based on whether the JDK or only the JRE is installed
RUN { \
		echo '#!/bin/sh'; \
		echo 'set -e'; \
		echo; \
		echo 'dirname "$(dirname "$(readlink -f "$(which javac || which java)")")"'; \
	} > /usr/local/bin/docker-java-home \
	&& chmod +x /usr/local/bin/docker-java-home
ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk/jre
ENV PATH $PATH:/usr/lib/jvm/java-11-openjdk/jre/bin:/usr/lib/jvm/java-11-openjdk/bin

ENV JAVA_VERSION 11.0.5
ENV JAVA_ALPINE_VERSION 11.0.5_p10-r0

RUN set -x \
	&& apk add --no-cache \
		openjdk11-jre="$JAVA_ALPINE_VERSION" libc6-compat bash ttf-dejavu ffmpeg \
	&& rm -rf /usr/include