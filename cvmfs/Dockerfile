##
## binet/cvmfs
## A container where CernVM-FS is up and running
##
FROM binet/slc-base
MAINTAINER Sebastien Binet "binet@cern.ch"

USER root
ENV USER root
ENV HOME /root
ENV VO_LHCB_SW_DIR /cvmfs/lhcb.cern.ch
ENV MYSITEROOT     /cvmfs/lhcb.cern.ch

# make sure /dev/fuse is there with adequate perms
RUN mknod -m 666 /dev/fuse c 10 229

# install cvmfs repos
RUN rpm -Uvh http://cvmrepo.web.cern.ch/cvmrepo/yum/cvmfs/EL/6/x86_64/cvmfs-release-2-4.el6.noarch.rpm

# Install rpms
RUN yum -y install fuse cvmfs SL_no_colorls cvmfs-init-scripts cvmfs-auto-setup

WORKDIR /root

## add files last (as this invalids caches)
ADD dot-pythonrc.py  $HOME/.pythonrc.py
ADD dot-bashrc       $HOME/.bashrc
ADD dot-bash_profile $HOME/.bash_profile

ADD etc-cvmfs-default-local /etc/cvmfs/default.local
ADD etc-cvmfs-lhcb-local    /etc/cvmfs/config.d/lhcb.cern.ch.local
ADD etc-cvmfs-domain-local  /etc/cvmfs/domain.d/cern.ch.local

## start autofs to allow auto-mount of CernVM-FS volumes
RUN service autofs start

## EOF

