FROM centos:centos7

RUN yum update -y && yum install -y telnet-server
RUN systemctl enable telnet.socket

RUN echo 'root:root' | chpasswd
RUN useradd admin
RUN echo 'admin:admin' | chpasswd

CMD ["/sbin/init"]
