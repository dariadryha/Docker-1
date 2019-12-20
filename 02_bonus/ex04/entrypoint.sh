#!/bin/sh
if [ $# -eq 0 ]; then
	/usr/games/fortune | /usr/games/cowsay | lolcat
else
	/usr/games/cowsay "$@" | lolcat
fi

# docker run -it image
