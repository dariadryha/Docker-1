FROM ubuntu:14.04

RUN apt-get update && apt-get install -y \
	ca-certificates \
	curl \
	git \
	openssh-server 

RUN curl https://packages.gitlab.com/install/repositories/gitlab/gitlab-ce/script.deb.sh | bash 

RUN apt-get update && apt-get install -y gitlab-ce

EXPOSE 443 80 22

ENTRYPOINT (/opt/gitlab/embedded/bin/runsvdir-start &) && gitlab-ctl reconfigure && tail -f /dev/null
