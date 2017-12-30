# monacoin_mining

## Prerequisisties

- Ubuntu 16.04
- nVIDIA GeForce GTX 1080
    - Driver: nvidia-387
- nvidia-docker2

## Build

```
$ docker build -t ciela/monacoin_mining .
```

## Run

```
$ docker run --runtime=nvidia --rm ciela/monacoin_mining:latest -a [algo] -o stratum+tcp://[pool-host]:[pool-port] -u [Weblogin].[WorkerName] -p [WorkerPassword]
```
