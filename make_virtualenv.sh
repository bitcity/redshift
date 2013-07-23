#!/usr/bin/env bash

cd /tmp
wget http://www.python.org/ftp/python/2.7.2/Python-2.7.2.tgz /tmp
tar -zxvf Python-2.7.2.tar.gz
cd Python-2.7.2
mkdir ~/.localpython
./configure --prefix=$HOME/.localpython
make
make install
cd /tmp
wget http://pypi.python.org/packages/source/v/virtualenv/virtualenv-1.5.2.tar.gz#md5=fbcefbd8520bb64bc24a560c6019a73c
tar -zxvf virtualenv-1.5.2.tar.gz
cd virtualenv-1.5.2/
~/.localpython/bin/python setup.py install
cd $HOME
~/.localpython/bin/python /tmp/virtualenv-1.5.2/virtualenv.py rsve -p $HOME/.localpython/bin/python2.7
source ~/rsve/bin/activate
