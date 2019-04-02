FROM ubuntu:16.04

RUN echo "deb http://apt.llvm.org/xenial/ llvm-toolchain-xenial-8 main" | tee -a /etc/apt/sources.list\
    && echo "deb-src http://apt.llvm.org/xenial/ llvm-toolchain-xenial-8 main" | tee -a /etc/apt/sources.list\
    && echo "deb http://ppa.launchpad.net/ubuntu-toolchain-r/test/ubuntu xenial main " | tee -a /etc/apt/sources.list\
    && apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 15CF4D18AF4F7421\
    && apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 1E9377A2BA9EF27F\
    && dpkg --add-architecture i386\
    && apt-get update
RUN DEBIAN_FRONTEND="noninteractive" apt-get install -y apt-utils\
    && DEBIAN_FRONTEND="noninteractive" apt-get install -y gcc-4.6 gcc-4.6-multilib\
    && DEBIAN_FRONTEND="noninteractive" apt-get install -y g++-4.6 g++-4.6-multilib\
    && DEBIAN_FRONTEND="noninteractive" apt-get install -y clang-8\
    && DEBIAN_FRONTEND="noninteractive" apt-get install -y make\
    && DEBIAN_FRONTEND="noninteractive" apt-get install -y libc6-dev-i386 uuid-dev:i386 libssl-dev:i386 libuuid1:i386 lib32z1 libcomerr2:i386 libk5crypto3:i386 libkrb5-3:i386 libidn11:i386 libgssapi-krb5-2:i386 libssl1.0.0:i386\
    && rm -f /usr/bin/gcc\
    && rm -f /usr/bin/g++\
    && ln -s /usr/bin/gcc-4.6 /usr/bin/gcc\
    && ln -s /usr/bin/g++-4.6 /usr/bin/g++\
    && ln -s /usr/bin/clang-8 /usr/bin/clang\
    && ln -s /usr/bin/clang++-8 /usr/bin/clang++\
    && ln -s /lib/i386-linux-gnu/libuuid.so.1 /lib/i386-linux-gnu/libuuid.so\
    && ln -s /usr/lib32/libz.so.1 /usr/lib32/libz.so

RUN mv /usr/include/c++/4.6/x86_64-linux-gnu/32/bits/c++config.h /usr/include/c++/4.6/x86_64-linux-gnu/32/bits/c++config.h.bak
COPY c++config.h /usr/include/c++/4.6/x86_64-linux-gnu/32/bits/
COPY c++config.h /usr/include/c++/4.6/x86_64-linux-gnu/bits/
COPY ./lib32/libcrypto.so.0.9.8 /lib/i386-linux-gnu/
COPY ./lib32/libssl.so.0.9.8 /lib/i386-linux-gnu/
COPY ./lib64/libcrypto.so.0.9.8 /lib/x86_64-linux-gnu/
COPY ./lib64/libssl.so.0.9.8 /lib/x86_64-linux-gnu/
