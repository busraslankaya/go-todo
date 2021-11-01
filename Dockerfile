

FROM golang:1.17.2-alpine3.14

WORKDIR /app

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY *.go ./

RUN go build -o /go-todo

EXPOSE 8080

CMD [ "/go-todo" ]