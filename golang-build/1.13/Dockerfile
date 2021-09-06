FROM golang:1.13

RUN set -ex \
    && apt-get update \
    && apt-get install -y git libpcre3 libpcre3-dev netcat gcc postgresql-client \
    && export GO111MODULE=on \
    && go get github.com/pressly/goose/cmd/goose
