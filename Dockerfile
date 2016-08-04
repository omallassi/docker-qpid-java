FROM java:8

#Copy the broker distribution 
#COPY qpid-broker-6.0.4-bin.zip /usr/local

RUN cd /usr/local \
	&& wget http://wwwftp.ciril.fr/pub/apache/qpid/java/6.0.4/binaries/qpid-broker-6.0.4-bin.zip \
	&& unzip -q qpid-broker-6.0.4-bin.zip

# Add entrypoint
COPY docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]

EXPOSE 5672 8080





