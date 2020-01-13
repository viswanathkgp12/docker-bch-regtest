# Bitcoin Cash Regtest Insight
Spinsup a bitcoin-cash regtest node which automines every 5 sec.
Also has an insight API available at http://localhost:3000 and UI at http://localhost:8200

## Info
Blocks are mined to the following account:
```
            ADDRESS                |                     PRIVATE KEY

mnJQyeDFmGjNoxyxKQC6MMFdpx77rYV3Bo | cVVGgzVgcc5S3owCskoneK8R1BNGkBveiEcGDaxu8RRDvFcaQaSG
```

## Run
```sh
docker run -d --name bch-regtest-insight -p 3000:3000 -p 8200:8200 vishy12/bch-regtest-insight:latest --restart=always
```
