FROM lileoh/dev:gcc4.6

ADD cmake-3.19.2-Linux-x86_64.tar.gz /usr/lib/
RUN apt-get update
RUN apt-get install -y libc6-dev-i386 uuid-dev:i386 libssl-dev:i386 libuuid1:i386 lib32z1 libcomerr2:i386 libk5crypto3:i386 libkrb5-3:i386 libidn11:i386 libgssapi-krb5-2:i386 libssl1.0.0:i386
RUN apt-get install -y clang-10 libclang-10-dev gcc-9 g++-9 gdb strace vim telnet tzdata libcurl4-openssl-dev:i386 proxychains libproxychains3:i386 locales ntpdate net-tools netcat inetutils-ping bear
RUN apt install -y git

RUN rm -f /usr/bin/cc\
    && ln -s /usr/bin/clang-10 /usr/bin/cc\
    && ln -s /usr/bin/clang++-10 /usr/bin/c++\
    && ln -s /usr/lib/cmake-3.19.2-Linux-x86_64/bin/cmake /usr/bin/cmake\
    && ln -s /lib/i386-linux-gnu/libuuid.so.1 /lib/i386-linux-gnu/libuuid.so

ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && locale-gen en_US.UTF-8
#ENV LANG C.UTF-8

ENV SHELL /bin/bash