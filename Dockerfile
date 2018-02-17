FROM ubuntu:16.04

WORKDIR /root

USER root

RUN apt-get update && apt-get install -y openssh-client sshpass nano wget

RUN ssh-keygen -t rsa -f ~/.ssh/id_rsa -P '' && cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys

COPY ej.sh .

RUN chmod 700 ej.sh

#ENTRYPOINT ["sh","-c","./ej.sh"]
