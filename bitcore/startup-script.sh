#!/bin/bash
export DB_HOST=172.17.0.1
export DB_PORT=3503
export BITCORE_CONFIG_PATH=/bitcore/bitcore.config.json

# Configurables packages/insight-previous/src/providers/default/default.ts
# ENV=dev NETWORK=testnet CHAIN=BTC npm -prefix=./packages/insight-previous run ionic:serve --nobrowser & npm -prefix=./packages/bitcore-node start
export NETWORK=regtest
export CHAIN=BCH
export API_PREFIX=http://127.0.0.1:8200/api
# Do not set to prod; packages/insight-previous/src/providers/api/api.ts#L21
ENV=dev NETWORK=regtest CHAIN=BCH API_PREFIX=http://127.0.0.1:8200/api npm -prefix=./packages/insight-previous run ionic:serve --nobrowser --dev & npm -prefix=./packages/bitcore-node run start
