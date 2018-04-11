FROM golang:1.10-alpine

RUN apk add --no-cache curl git make
RUN curl -fsSL -o /usr/local/bin/dep https://github.com/golang/dep/releases/download/v0.4.1/dep-linux-amd64 && chmod +x /usr/local/bin/dep
RUN go get -u github.com/golang/lint/golint