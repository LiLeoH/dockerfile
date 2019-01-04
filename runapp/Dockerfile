FROM lileoh/yydev:cquery

RUN apt install -y gdb \
    && apt install -y telnet \
    && apt install -y strace \
    && apt install -y vim 

ENTRYPOINT ["/bin/bash", "/home/dspeak/yyms/init.sh"]
