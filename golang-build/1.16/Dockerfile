FROM golang:1.16

RUN apt-get update 
RUN apt-get install -y git libpcre3 libpcre3-dev netcat gcc postgresql-client
# RUN export GO111MODULE=on 
RUN go get github.com/pressly/goose/cmd/goose
