FROM cern/cc7-base:20201201-1.x86_64

MAINTAINER Enrico Bocchi <enrico.bocchi@cern.ch>

RUN yum -y install \
      nscd \
      nss-pam-ldapd && \
    yum clean all && \
    rm -rf /var/cache/yum

RUN rm -f /etc/nslcd.conf /etc/nsswitch.conf

CMD ["/usr/sbin/nscd", "--foreground", "--debug"]
