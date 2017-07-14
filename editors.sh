#!/bin/bash

RSTUDIO_VERSION=1.0.143
SUBL_VERSION=3126

mkdir -p ~/bin

RSTUDIO_RPM=rstudio-${RSTUDIO_VERSION}-x86_64.rpm
cd ~/bin
wget https://download1.rstudio.org/${RSTUDIO_RPM}
rpm2cpio ${RSTUDIO_RPM} | cpio -idv
ln -s ~/bin/usr/lib/rstudio/bin/rstudio ~/bin/rs
rm ${RSTUDIO_RPM}

SUBL_TAR=sublime_text_3_build_${SUBL_VERSION}_x64.tar.bz2
wget https://download.sublimetext.com/${SUBL_TAR}
tar -xvjf ${SUBL_TAR}
ln -s ~/bin/sublime_text_3/sublime_text ~/bin/sl
rm ${SUBL_TAR}
