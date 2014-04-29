#!/bin/bash
# Create a ScientificLinux CERN base image for docker

set -e
MIRROR_URL="ftp://linuxsoft.cern.ch/cern/slc6X/x86_64"
MIRROR_URL_UPDATES="ftp://linuxsoft.cern.ch/cern/slc6X/x86_64/updates"

# sudo yum install -y febootstrap xz

febootstrap -i bash -i coreutils -i tar -i bzip2 -i gzip \
 -i vim-minimal -i wget -i patch -i diffutils -i iproute -i yum \
 slc6X slc6-64 \
 $MIRROR_URL
# -u $MIRROR_URL_UPDATES
touch slc6-64/etc/resolv.conf
touch slc6-64/sbin/init
cat >| slc6-64/etc/yum.repos.d/slc6-os.repo << EOF
[slc6-os]
name=Scientific Linux CERN 6 (SLC6) base system packages
baseurl=http://linuxsoft.cern.ch/cern/slc6X/$basearch/yum/os/
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-cern
gpgcheck=1
enabled=1
protect=1
EOF

cat >| slc6-64/etc/yum.repos.d/slc6-updates.repo << EOF
[slc6-updates]
name=Scientific Linux CERN 6 (SLC6) bugfix and security updates
baseurl=http://linuxsoft.cern.ch/cern/slc6X/$basearch/yum/updates/
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-cern
gpgcheck=1
enabled=1
protect=1
EOF

echo "::::::::::::::::::::::"
echo ":: creating tarball..."
tar --numeric-owner -Jcpf slc6-64.tar.xz -C slc6-64 .
echo ":: done."
