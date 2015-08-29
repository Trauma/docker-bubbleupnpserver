FROM ubuntu:latest

RUN apt-get -y update && \
	apt-get -y install openjdk-7-jre-headless software-properties-common && \
	add-apt-repository ppa:bubbleguuum/bubbleupnpserver && \
	apt-get -y update && apt-get -y install bubbleupnpserver && \
	add-apt-repository ppa:mc3man/trusty-media && \
	apt-get -y update && apt-get -y install ffmpeg

ADD ./start.sh /sbin/start.sh

CMD [ "/sbin/start.sh" ]
