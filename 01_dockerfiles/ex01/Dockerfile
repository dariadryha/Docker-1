FROM debian

RUN  apt-get update && apt-get install -y \
	bzip2 \
	wget

RUN wget https://files.teamspeak-services.com/releases/server/3.5.1/teamspeak3-server_linux_amd64-3.5.1.tar.bz2 \
	&& tar xfvj teamspeak3-server_linux_amd64-3.5.1.tar.bz2 \
	&& rm teamspeak3-server_linux_amd64-3.5.1.tar.bz2

WORKDIR	"/teamspeak3-server_linux_amd64"

ENV TS3SERVER_LICENSE accept

EXPOSE 9987/udp 10011 30033 

ENTRYPOINT ["sh","ts3server_minimal_runscript.sh"]
