FROM memcached:1.4

ADD run.sh /bin/run.sh
CMD /bin/run.sh
