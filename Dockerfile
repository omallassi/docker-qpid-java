FROM java:8

#Copy the broker distribution 
COPY qpid-broker-6.0.4-bin.zip /usr/local

#RUN cd /usr/local \
#	&& wget http://wwwftp.ciril.fr/pub/apache/qpid/java/6.0.4/binaries/qpid-broker-6.0.4-bin.zip \
#	&& unzip -q qpid-broker-6.0.4-bin.zip

RUN cd /usr/local \
	&& unzip -q qpid-broker-6.0.4-bin.zip

#Copy the broker config file. there is certainly a better way like jakob did with qdrouterd
COPY init-config.json /usr/local

# Add entrypoint
COPY docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]

EXPOSE 5672 8080





