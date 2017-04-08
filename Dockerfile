FROM hypriot/rpi-golang:latest
# FROM golang:latest

RUN mkdir -p /go/src/hello

COPY hello.go /go/src/hello/main.go

RUN GOPATH=/go go build -o /bin/hello hello

# Alpine launches into a `sh` shell by default, and it can't run executables
# in a normal fashion, so we have to invoke the linker on them.
CMD /lib/ld-musl-armhf.so.1 /bin/hello
