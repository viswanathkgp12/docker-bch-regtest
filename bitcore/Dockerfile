FROM ubuntu:18.04

# Install essentials
RUN apt-get update -y \
    && apt-get install -y sudo git curl

#Install Node and NPM
RUN curl -sL https://deb.nodesource.com/setup_10.x -o nodesource_setup.sh
RUN bash nodesource_setup.sh
RUN apt-get install -y nodejs build-essential

RUN git clone https://github.com/bitpay/bitcore.git

WORKDIR /bitcore
RUN git checkout tags/v8.1.0

RUN npm install --loglevel=verbose
RUN npm run bootstrap --loglevel=verbose
RUN npm run compile

COPY bitcore.config.json bitcore.config.json
COPY startup-script.sh startup-script.sh

COPY api.ts /bitcore/packages/insight-previous/src/providers/api/api.ts
EXPOSE 3000 8200

CMD ["sh", "startup-script.sh"]
