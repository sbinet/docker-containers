##
## binet/cvmfs
## A container where CernVM-FS is up and running
##
FROM binet/slc-base
MAINTAINER Sebastien Binet "binet@cern.ch"

USER root
ENV USER root
ENV HOME /root

# Install repo file
RUN cd /etc/yum.repos.d/ && \
    curl -O -L http://cvmrepo.web.cern.ch/cvmrepo/yum/cernvm.repo

# Install repo keys
RUN cd /etc/pki/rpm-gpg/ && \
    curl -O -L http://cvmrepo.web.cern.ch/cvmrepo/yum/RPM-GPG-KEY-CernVM

# Install rpms
RUN yum -y install fuse cvmfs SL_no_colorls cvmfs-init-scripts

WORKDIR $HOME

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

