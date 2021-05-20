FROM lileoh/dev:gcc4.6

RUN echo "deb http://apt.llvm.org/xenial/ llvm-toolchain-xenial-10 main" | tee -a /etc/apt/sources.list\
    && echo "deb-src http://apt.llvm.org/xenial/ llvm-toolchain-xenial-10 main" | tee -a /etc/apt/sources.list\
    && apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 15CF4D18AF4F7421\
    && apt-key adv --recv-keys --keyserver keyserver.ubuntu.com 1E9377A2BA9EF27F\
    && dpkg --add-architecture i386\
    && apt-get update

ADD cmake-3.19.8-Linux-x86_64.tar.gz /usr/lib/

RUN apt-get install -y clang-10 libclang-10-dev gcc-9 g++-9 gdb strace vim telnet tzdata proxychains libproxychains3:i386 locales ntpdate net-tools netcat inetutils-ping bear
RUN apt install -y git

RUN rm -f /usr/bin/cc\
    && ln -s /usr/bin/clang-10 /usr/bin/cc\
    && ln -s /usr/bin/clang++-10 /usr/bin/c++\
    && ln -s /usr/lib/cmake-3.19.8-Linux-x86_64/bin/cmake /usr/bin/cmake\
    && ln -s /lib/i386-linux-gnu/libuuid.so.1 /lib/i386-linux-gnu/libuuid.so

ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && locale-gen en_US.UTF-8
#ENV LANG C.UTF-8

ENV SHELL /bin/bash
