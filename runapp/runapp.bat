---docker run -it --rm --security-opt seccomp:unconfined -w /mnt/hgfs/code/server_baselib/branches/release_3 -v r:/code:/mnt/hgfs/code -v R:/dockerfile/runapp:/home/dspeak/yyms --env LANG=C.UTF-8 lileoh/dev:runapp /bin/bash