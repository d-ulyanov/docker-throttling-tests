FROM ubuntu:latest

COPY first.sh first.sh
COPY second.sh second.sh
COPY wrap.sh wrap.sh

CMD ./wrap.sh
