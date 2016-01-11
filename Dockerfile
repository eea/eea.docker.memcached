FROM memcached:latest

ADD run.sh /bin/run.sh
CMD /bin/run.sh
