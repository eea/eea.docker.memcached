FROM memcached:latest

ADD run.sh /bin/run.sh
CMD /bin/run.sh

# Install Chaperone
USER root
RUN apt-get update -q && \
    apt-get install python3-pip --no-install-recommends -y && \
    pip3 install chaperone && apt-get clean && rm -rf /tmp/* /var/tmp/*

# Chaperone setup
COPY chaperone.conf /etc/chaperone.d/chaperone.conf
RUN usermod -u 500 memcache && groupmod -g 500 memcache
USER memcache
ENTRYPOINT ["/usr/local/bin/chaperone"]
CMD ["--user", "memcache"]