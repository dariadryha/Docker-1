FROM ubuntu

RUN apt-get update && apt-get install -y curl \
gnupg \
nodejs \
vim

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - \
&& echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update && apt-get install yarn

EXPOSE 8081

# vim index.js
# yarn init
# yarn install
# yarn add express
# node index.js
