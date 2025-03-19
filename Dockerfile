FROM debian:stable

RUN apt update && apt install -y gcc

COPY sdi2000150.c /sdi2000150.c

RUN gcc -o /sdi2000150 /sdi2000150.c

CMD ["/sdi2000150"]