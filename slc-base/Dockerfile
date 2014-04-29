FROM centos
MAINTAINER Sebastien Binet "binet@cern.ch"

# install a few dependencies
RUN yum install -y \
	febootstrap git lzo tar

RUN git clone \
	git://github.com/sbinet/docker-containers \
	/build/docker-containers

RUN cd /build && /build/docker-containers/mkimage-slc.sh
