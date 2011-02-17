#! /bin/sh

cd zeromq2 && ./autogen.sh && ./configure --prefix=`pwd`/.prefix && make && make install && cd ..
cd erlzmq && ./bootstrap && ./configure --enable-static=yes --with-zeromq=`pwd`/../zeromq2/.prefix && make && cd ..
rm -rf zeromq2
mv erlzmq/* .
rm -rf erlzmq
