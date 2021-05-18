FROM ubuntu

ARG USER_ID
ARG GROUP_ID
ARG NAME

RUN apt-get update
RUN apt-get install -y \
        build-essential \
        flex \
        bison \
        libssl-dev \
        bc \
        libelf-dev \
        libncurses-dev \
        rsync \
        zsh \
        sudo \
        fonts-powerline \
        language-pack-en

RUN addgroup --gid ${GROUP_ID} ${NAME}
RUN adduser --disabled-password --gecos '' --uid ${USER_ID} --gid ${GROUP_ID} ${NAME}
RUN usermod -aG sudo ${NAME} 

RUN sed -i '27i\\nppeck   ALL=(ALL) NOPASSWD:ALL' /etc/sudoers

USER ${NAME}

CMD ["/bin/zsh"]
