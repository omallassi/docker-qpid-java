#!/bin/bash

/usr/local/qpid-broker/6.0.4/bin/qpid-server -icp /usr/local/init-config.json -prop "qpid.amqp_port=5672" -prop "qpid.a_amqp_port=5673" -prop "qpid.http_port=8080" 

#-prop "qpid.work_dir=/home/omallassi/qpid-broker/broker1data-6.1.0" &
