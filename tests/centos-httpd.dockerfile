FROM centos:centos7

COPY files/docker/systemctl.py /usr/bin/systemctl
RUN yum install -y httpd httpd-tools
COPY files/docker/systemctl.py /usr/bin/systemctl
RUN systemctl enable httpd
RUN echo TEST_OK > /var/www/html/index.html
EXPOSE 80
CMD /usr/bin/systemctl
