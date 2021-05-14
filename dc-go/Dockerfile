FROM lileoh/dev:dc-ccls

RUN DEBIAN_FRONTEND="noninteractive" apt-get update
RUN apt-get install -y gdb g++-5 cmake telnet strace vim tzdata inetutils-ping proxychains locales ntpdate

ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && locale-gen en_US.UTF-8

RUN mkdir -p /home/dspeak/yyms
ADD hostinfo.ini /home/dspeak/yyms
ADD hosts.txt /home/dspeak/yyms
#RUN cat /home/dspeak/yyms/hosts.txt >> /etc/hosts

RUN rm -f /usr/bin/gcc\
    && rm -f /usr/bin/g++\
    && ln -s /usr/bin/gcc-5 /usr/bin/gcc\
    && ln -s /usr/bin/g++-5	/usr/bin/g++

ADD go1.15.6.linux-amd64.tar.gz /usr/local/
ENV PATH $PATH:/usr/local/go/bin
ENV GOROOT /usr/local/go
#ENV LANG C.UTF-8

ENV SHELL /bin/bash
