FROM centos:7
RUN yum -y update && yum -y install epel-release && yum clean all
RUN yum -y install R && yum clean all
RUN  yum -y install libcurl-devel && \
	 yum -y install openssl-devel && \
	 yum -y install libxml2-devel && \
     yum clean all
RUN mkdir /R
RUN adduser ruser
RUN chown ruser /R
