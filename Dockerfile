FROM golang:1.16-alpine3.13 as builder
COPY go.mod go.sum /go/src/github.com/sujithps/gochat/
WORKDIR /go/src/github.com/sujithps/gochat
RUN go mod download
COPY . /go/src/github.com/sujithps/gochat
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o build/gochat gochat

FROM alpine
RUN apk add --no-cache ca-certificates && update-ca-certificates
COPY --from=builder /go/src/github.com/sujithps/gochat/build/gochat /usr/bin/gochat
RUN apk add --no-cache bash
#CMD ["/usr/bin/gochat --name sujith --host 10.5.0.6 --port 3100"]