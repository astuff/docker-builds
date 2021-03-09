FROM ubuntu:16.04

RUN apt-get update && apt-get install -y sudo tzdata keyboard-configuration

RUN adduser --disabled-password --gecos '' as-user
RUN adduser as-user sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER as-user
CMD /bin/bash
