FROM ubuntu:16.04

ADD ./script.sh /script.sh
ADD ./loop.sh /loop.sh

ENTRYPOINT /script.sh