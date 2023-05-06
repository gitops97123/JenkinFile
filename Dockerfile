FROM    rockylinux/rockylinux
MAINTAINER      sam<sanuragi@redhat.com>
RUN     yum update -y
RUN     yum install wget curl tree tmux vim git -y
RUN     useradd sam && echo sam:redhat | chpasswd
USER    sam
RUN     mkdir /home/sam/hell-world
