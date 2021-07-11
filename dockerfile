FROM ubuntu:18.04
 
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
  apt-get install -y gcc python-dev libkrb5-dev && \
  apt-get install python3-pip -y && \
  pip3 install --upgrade pip && \
  pip3 install --upgrade virtualenv && \
  pip3 install pywinrm[kerberos] && \
  apt install krb5-user -y && \ 
  pip3 install pywinrm

# Hedef bilgisayarlara SSH bağlantısı kurabilmemiz için openssl-client kuralım:
RUN apt install -y openssh-client sshpass

# Ansible son sürümünü kuralım
RUN  pip3 install ansible
