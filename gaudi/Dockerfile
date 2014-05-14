##
## binet/gaudi
## A container where the GAUDI software stack has been installed
##
FROM binet/slc-base
MAINTAINER Sebastien Binet "binet@cern.ch"

USER root
ENV USER root
ENV HOME /root

ENV MYSITEROOT /opt/lhcb-sw
ENV CMTCONFIG x86_64-slc6-gcc48-opt

RUN mkdir -p $MYSITEROOT
WORKDIR $MYSITEROOT

## install some system dependencies
RUN yum install -y \
    bzip2 \
    freetype \
    tar \
    which

## retrieve install
RUN curl -O -L http://cern.ch/binet/sw/dist/pkr && \
    chmod +x ./pkr

## install (source+binaries)
RUN ./pkr install GAUDI_v25r1_${CMTCONFIG}

## clean-up
RUN /bin/rm -rf $MYSITEROOT/{tmp,targz} && \
    mkdir $MYSITEROOT/{tmp,targz}

## temporary fixup for ROOT-6 install leaking into regular ROOT-5 install
RUN /bin/rm -rf $MYSITEROOT/lcg/releases/ROOT/v5-99-*

WORKDIR /root

## add files last (as this invalids caches)
ADD dot-pythonrc.py  $HOME/.pythonrc.py
ADD dot-bashrc       $HOME/.bashrc
ADD dot-bash_profile $HOME/.bash_profile

## EOF

