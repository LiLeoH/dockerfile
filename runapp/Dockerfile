FROM lileoh/dev:gcc4.6

RUN apt-get update
RUN DEBIAN_FRONTEND="noninteractive" apt-get install -y gdb cmake telnet strace vim

ENTRYPOINT ["/bin/bash", "/home/dspeak/yyms/init.sh"]
