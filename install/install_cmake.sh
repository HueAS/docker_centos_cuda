#!/bin/sh

# install cmake 2.8 -------------------------------------------------------------------------------
cmake_ver=cmake28
[ $1 -eq 7 ] && cmake_ver=cmake # package is just called cmake in centos 7

yum install -y \
        $cmake_ver

# only symlink cmake on CentOS 5
[ $1 -eq 5 ] && ln -s /usr/bin/cmake28 /usr/bin/cmake || echo Not symlinking cmake28, CentOS > 5
