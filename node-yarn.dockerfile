FROM node

RUN apt update && apt install -yq \
apt-transport-https \
ca-certificates

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -

RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt update && apt install -y yarn

RUN node -v && yarn -v

# Create app directory
RUN mkdir -p /app

WORKDIR /app
