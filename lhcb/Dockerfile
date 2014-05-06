FROM binet/slc-base
MAINTAINER Sebastien Binet "binet@cern.ch"

USER root
ENV USER=root

RUN mkdir -p /opt/lhcb

ENV MYSITEROOT /opt/lhcb
RUN export MYSITEROOT=/opt/lhcb
ENV CMTCONFIG x86_64-slc6-gcc48-opt
RUN export CMTCONFIG=x86_64-slc6-gcc48-opt


## retrieve install
RUN cd $MYSITEROOT && \
	curl -O -L http://lhcbproject.web.cern.ch/lhcbproject/dist/install_project.py && \
	chmod +x ./install_project.py

## install LHCB (source+binaries)
RUN cd $MYSITEROOT && \
	./install_project -b LHCB v37r1
