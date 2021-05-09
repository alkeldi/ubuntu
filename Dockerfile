FROM ubuntu:latest

RUN DEBIAN_FRONTEND=noninteractive\
    && export TZ=America/New_York\
    && ln -snf /usr/share/zoneinfo/$TZ /etc/localtime\
    && echo $TZ > /etc/timezone\
    && apt-get clean -y\
    && apt-get update -y\
    && apt-get upgrade -y\
    && sed -i -E '/(# Drop all man pages)|(path-exclude=\/usr\/share\/man)/d' /etc/dpkg/dpkg.cfg.d/excludes\
    && apt-get install man -y\
    && apt-get install --reinstall coreutils -y\
    && apt-get install vim -y\
    && apt-get install tmux -y\
    && apt-get install sudo -y\
    && apt-get install net-tools -y\
    && apt-get install iputils-ping -y\
    && apt-get install wget -y\
    && apt-get install curl -y\
    && apt-get install python3 python3-venv python3-pip -y\
    && apt-get install less -y\
    && apt-get install htop -y\
    && apt-get install locales -y\
    && apt-get install git -y\
    && apt-get install gcc -y\
    && apt-get install g++ -y\
    && apt-get install clang -y\
    && apt-get install gdb -y\
    && apt-get install lldb -y\
    && apt-get install cmake -y\
    && echo 'root:toor' | chpasswd

