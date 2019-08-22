FROM lileoh/dev:gcc4.6

ADD cmake-3.15.2-Linux-x86_64.tar.gz /usr/lib/
RUN apt-get update\
    && DEBIAN_FRONTEND="noninteractive" apt-get install -y g++-5 libclang-8-dev\
    && rm -f /usr/bin/cc\
    && ln -s /usr/bin/clang-8 /usr/bin/cc\
    && ln -s /usr/bin/clang++-8 /usr/bin/c++\
    && ln -s /usr/lib/cmake-3.15.2-Linux-x86_64/bin/cmake /usr/bin/cmake
	