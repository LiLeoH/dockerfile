FROM lileoh/yydev:gcc4.6

RUN apt-get install -y gdb \
    && apt-get install -y telnet \
    && apt-get install -y strace \
    && apt-get install -y vim 

ENTRYPOINT ["/bin/bash", "/home/dspeak/yyms/init.sh"]