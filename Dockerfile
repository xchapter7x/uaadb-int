FROM xchapter7x/uaadb-base
MAINTAINER John Calabrese <xchapter7x@gmail.com>

COPY start.sh /sbin/start.sh
RUN chmod 755 /sbin/start.sh
ENV SSH_USER vcap 
ENV SSH_PASS ee1931eb33f7bddd
ENV DB_USER root 
ENV DB_PASS e208f9c6179af4288692
EXPOSE 22
CMD ["/sbin/start.sh"]
