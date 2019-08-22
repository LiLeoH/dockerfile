FROM lileoh/dev:gcc4.6

RUN DEBIAN_FRONTEND="noninteractive" apt-get update
RUN apt-get install -y gdb cmake telnet strace vim tzdata inetutils-ping proxychains locales

ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone && locale-gen en_US.UTF-8

RUN mkdir -p /home/dspeak/yyms
ADD hostinfo.ini /home/dspeak/yyms
ADD hosts.txt /home/dspeak/yyms
#RUN cat /home/dspeak/yyms/hosts.txt >> /etc/hosts

ADD go1.11.13.linux-amd64.tar.gz /usr/local/
ENV PATH $PATH:/usr/local/go/bin
ENV GOROOT /usr/local/go
#ENV LANG C.UTF-8

ENV SHELL /bin/bash
