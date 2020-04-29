#!/bin/bash
set -e
cd alpine && docker build --pull -t chongqing-shipping/alpine:3.11 . && docker tag chongqing-shipping/alpine:3.11 private.registry.frontier.com/chongqing-shipping/alpine:3.11 && docker push private.registry.frontier.com/chongqing-shipping/alpine:3.11 && cd -
cd openjdk && docker build --pull -t chongqing-shipping/openjdk:11.0.5-jre-alpine3.11 . && docker tag chongqing-shipping/openjdk:11.0.5-jre-alpine3.11 private.registry.frontier.com/chongqing-shipping/openjdk:11.0.5-jre-alpine3.11 && docker push private.registry.frontier.com/chongqing-shipping/openjdk:11.0.5-jre-alpine3.11 && cd -
cd postgres && docker build --pull -t chongqing-shipping/postgres:12.2-alpine3.11 . && docker tag chongqing-shipping/postgres:12.2-alpine3.11 private.registry.frontier.com/chongqing-shipping/postgres:12.2-alpine3.11 && docker push private.registry.frontier.com/chongqing-shipping/postgres:12.2-alpine3.11 && cd -