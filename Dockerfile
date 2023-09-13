FROM golang:1.21.1

WORKDIR /

COPY go.mod ./

RUN go mod download

COPY . .

RUN go build

EXPOSE 8888

ENV GIN_MODE=release

CMD ./http-proxy-go