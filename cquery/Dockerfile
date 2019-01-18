FROM lileoh/yydev:gcc4.6

ADD cmake-3.12.4-Linux-x86_64.tar.gz /usr/lib/
RUN apt-get update\
    && apt-get install -y g++-5 libclang-7-dev\
    && rm -f /usr/bin/cc\
    && ln -s /usr/bin/clang-7 /usr/bin/cc\
    && ln -s /usr/bin/clang++-7 /usr/bin/c++\
    && ln -s /usr/lib/cmake-3.12.4-Linux-x86_64/bin/cmake /usr/bin/cmake