FROM lileoh/dev:gcc4.6

ADD cmake-3.14.5-Linux-x86_64.tar.gz /usr/lib/
RUN apt-get update\
    && DEBIAN_FRONTEND="noninteractive" apt-get install -y g++-7 libclang-8-dev gdb strace vim telnet tzdata\
    && rm -f /usr/bin/cc\
    && ln -s /usr/bin/clang-8 /usr/bin/cc\
    && ln -s /usr/bin/clang++-8 /usr/bin/c++\
    && ln -s /usr/lib/cmake-3.14.5-Linux-x86_64/bin/cmake /usr/bin/cmake
	
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

ENV SHELL /bin/bash