FROM ubuntu:latest

RUN apt-get update && apt-get -y install curl

COPY my_script.sh /usr/local/bin/my_script.sh
RUN chmod +x /usr/local/bin/my_script.sh


RUN ./usr/local/bin/my_script.sh