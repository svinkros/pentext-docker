FROM ubuntu:latest
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y \
	wget \
	unzip \
	openjdk-14-jre \
	python \
	python3-pip \
	libenchant-dev \
	git && \
	apt clean

ENV  PATH=${PATH}:/usr/src

WORKDIR /usr/src/fop

RUN wget -O fop-2.5-bin.tar.gz "https://www.apache.org/dyn/closer.cgi?filename=/xmlgraphics/fop/binaries/fop-2.5-bin.tar.gz&action=download" \
 && tar -xzf fop-2.5-bin.tar.gz && rm -f fop-2.5-bin.tar.gz

WORKDIR /usr/src/saxonhe

RUN wget -O SaxonHE10-3J.zip https://sourceforge.net/projects/saxon/files/Saxon-HE/10/Java/SaxonHE10-3J.zip/download \
 && unzip SaxonHE10-3J.zip && rm -f SaxonHE10-3J.zip

ADD build_report.sh /usr/local/
RUN chmod +x /usr/local/build_report.sh

RUN pip3 install python-gitlab pypandoc lxml pyenchant titlecase pyenchant
