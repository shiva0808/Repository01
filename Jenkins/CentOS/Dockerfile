FROM centos:7

RUN yum -y install openssh-server

RUN useradd remote_user && \
    echo "1234" | passwd remote_user --stdin && \
    mkdir /home/remote_user/.ssh && \
    chmod 700 /home/remote_user/.ssh

COPY ./CentOs/remote-key.pub /home/remote_user/.ssh/authorized_keys

RUN chown remote_user:remote_user /home/remote_user/.ssh/ && \
    chmod 600 /home/remote_user/.ssh/authorized_keys

RUN /usr/sbin/sshd-keygen

RUN yum -y install mysql

RUN yum update -y
RUN yum -y install epel-release
RUN yum -y install python3
RUN yum -y install python-pip
RUN alternatives --install /usr/bin/python python /usr/bin/python2 1
RUN alternatives --install /usr/bin/python python /usr/bin/python3 2
RUN echo 2 | alternatives --config python


RUN curl -O https://bootstrap.pypa.io/get-pip.py && \
    python get-pip.py && \
    pip3 install awscli --upgrade

CMD /usr/sbin/sshd -D
