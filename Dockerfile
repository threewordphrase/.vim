FROM ubuntu:18.04

RUN apt-get update && apt-get install -y --no-install-recommends \
 sudo git apt-transport-https ca-certificates automake \
 software-properties-common autoconf pkg-config build-essential \
 && rm -rf /var/lib/apt/lists/*

RUN useradd -ms /bin/bash ender

RUN usermod -aG sudo ender

RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER ender

WORKDIR /home/ender

RUN git clone https://github.com/universal-ctags/ctags && \
cd ctags && \
./autogen.sh && \
./configure && \
make && \
sudo make install

COPY --chown=ender . .vim

RUN cd .vim && ./install.sh

ENV PATH="/opt/conda/envs/works/bin:${PATH}"

