FROM ubuntu:focal AS base
WORKDIR /usr/local/bin
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get -y install sudo && \
    apt-get upgrade -y && \
    apt-get install -y software-properties-common curl git build-essential && \
    apt-add-repository -y ppa:ansible/ansible && \
    apt-get update && \
    apt-get install -y curl git ansible build-essential && \
    apt-get clean autoclean && \
    apt-get autoremove --yes

FROM base AS dd
ARG TAGS
RUN useradd -ms /bin/bash den
RUN echo 'den:den' | chpasswd
RUN chown -R den:den /home/den
RUN usermod -aG sudo den
USER den
WORKDIR /home/den

FROM dd
COPY . .
CMD ["sh", "-c", "ansible-playbook $TAGS local.yml"]
