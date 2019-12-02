FROM lileoh/dev:gcc4.6

ADD cmake-3.15.2-Linux-x86_64.tar.gz /usr/lib/
RUN apt-get update\
    && DEBIAN_FRONTEND="noninteractive" apt-get install -y libclang-8-dev g++-9 gdb strace vim telnet tzdata libcurl4-openssl-dev:i386 proxychains libproxychains3:i386 locales
RUN rm -f /usr/bin/cc\
    && ln -s /usr/bin/clang-8 /usr/bin/cc\
    && ln -s /usr/bin/clang++-8 /usr/bin/c++\
    && ln -s /usr/lib/cmake-3.15.2-Linux-x86_64/bin/cmake /usr/bin/cmake

ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && locale-gen en_US.UTF-8
#ENV LANG C.UTF-8

ENV SHELL /bin/bash