FROM nfnty/arch-devel
MAINTAINER Gerry Gleason gerry/ubos-devel

ADD build/buildmaster-user.sh /tmp/build/
RUN /tmp/build/buildmaster-user.sh

RUN pacman --noconfirm -S --noconfirm base-devel libaio php git perl-lchown perl-json perl-log-log4perl cronie ntp btrfs-progs mariadb perl-dbi perl-dbd-mysql perl-archive-zip apache mod_wsgi2 perl-www-curl parted dosfstools arch-install-scripts rsync perl-http-date maven polkit python2-setuptools && \
pacman --noconfirm -S --noconfirm virtualbox grub

# as buildmaster>
ADD build/buildmaster.sh /tmp/build/
RUN su - buildmaster /tmp/build/buildmaster.sh
#RUN pacman --noconfirm -U multipath-tools-*.pkg.tar.xz
#ADD build/buildmaster2.sh /tmp/build/
#RUN su - buildmaster /tmp/build/buildmaster2.sh

