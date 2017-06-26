# Latest version of centos 
FROM centos:centos7 
MAINTAINER Martin
RUN yum clean all && \
    yum -y install epel-release && \
    yum -y install ansible ansible-lint && \
    yum update -y && \
    yum clean all
RUN echo '[local]\nlocalhost\n' > /etc/ansible/hosts
VOLUME [ "/sys/fs/cgroup", "/run" ]
CMD [ "ansible-playbook", "--version" ]
