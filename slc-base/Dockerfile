FROM centos
MAINTAINER Sebastien Binet "binet@cern.ch"

# install a few dependencies
RUN yum install -y \
	febootstrap git lzo tar xz xz-libs

RUN git clone \
	git://github.com/sbinet/docker-containers \
	/docker-containers

RUN mkdir /build && \
	cd /build && \
	/docker-containers/mkimage-slc.sh
