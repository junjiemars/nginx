#!/bin/bash

N_HOME="${N_HOME:-`pwd`}"
N_RUN="${N_RUN:-/opt/run}"


cd "$N_HOME"
auto/configure --prefix=$N_RUN         \
  --without-http                       \
  --without-http-cache                 \
  --with-stream                        \
  --with-stream_realip_module          

make && make install
  
