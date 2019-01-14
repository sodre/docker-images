#!/usr/bin/env bash
echo 'conda ALL=NOPASSWD: /usr/bin/yum' >> /etc/sudoers

useradd --shell /bin/bash -c "" -m conda
export HOME=/home/conda
export USER=conda
export LOGNAME=conda
export MAIL=/var/spool/mail/conda
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/home/conda/bin
chown conda:conda $HOME
chown -R conda:conda /opt/conda
cp -R /etc/skel $HOME && chown -R conda:conda $HOME/skel && (ls -A1 $HOME/skel | xargs -I {} mv -n $HOME/skel/{} $HOME) && rm -Rf $HOME/skel
cp /root/.condarc $HOME/.condarc && chown conda:conda $HOME/.condarc
cd $HOME
