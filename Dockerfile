FROM golang:latest
MAINTAINER chenjiacun35@163.com

RUN apt-get -y update && apt-get install -y openjdk-7-jre-headless

RUN go get -d -u github.com/chenjiacun35/battery-historian
WORKDIR /go/src/github.com/chenjiacun35/battery-historian
RUN go run setup.go

EXPOSE 9999
CMD go run cmd/battery-historian/battery-historian.go --port 9999
