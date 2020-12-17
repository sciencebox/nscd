FROM cern/cc7-base:20201201-1.x86_64

MAINTAINER Enrico Bocchi <enrico.bocchi@cern.ch>

RUN yum -y install nscd && \
    yum clean all && \
    rm -rf /var/cache/yum

CMD ["/usr/sbin/nscd", "--foreground"]
