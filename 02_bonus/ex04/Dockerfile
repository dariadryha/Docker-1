FROM debian

RUN apt-get update && apt-get install -y \
	cowsay \
	fortune \
	ruby \
	&& gem install lolcat

COPY entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
