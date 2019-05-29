FROM ubuntu:18.04

RUN apt update && apt install -y sudo

RUN adduser --disabled-password --gecos '' as-user
RUN adduser as-user sudo
RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER as-user
CMD /bin/bash
