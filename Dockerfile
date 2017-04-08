FROM hypriot/rpi-golang:latest
# FROM golang:latest

RUN mkdir -p /go/src/hello

COPY hello.go /go/src/hello/main.go

RUN GOPATH=/go go build -o /bin/hello hello

CMD /bin/hello
