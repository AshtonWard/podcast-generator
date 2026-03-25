FROM ubuntu:lastest

RUN apt update && apt install -y \
    python3.10 \ 
    python3-pip \
    git 

RUN pip3 install pyYaml

COPY feed.py /usr/bin/feed.py
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]