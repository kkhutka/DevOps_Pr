FROM ubuntu:latest

RUN apt-get update && apt-get -y install curl

COPY my_script.sh /usr/local/bin/my_script.sh
RUN chmod +x /usr/local/bin/my_script.sh
RUN chmod 777 /usr/local/bin/error.log


CMD while true; do /usr/local/bin/my_script.sh; sleep 30; done
