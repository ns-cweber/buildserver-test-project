FROM hypriot/rpi-alpine:latest
# FROM alpine:latest

COPY /hello /bin/hello

# Alpine launches into a `sh` shell by default, and it can't run executables
# in a normal fashion, so we have to invoke the linker on them.
CMD /lib/ld-musl-armhf.so.1 /bin/hello
# CMD /lib/ld-musl-x86_64.so.1 /bin/hello
