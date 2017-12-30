FROM nvidia/cuda:8.0-devel
MAINTAINER ciela <zektbach@gmail.com>

RUN apt update -y && apt upgrade -y
RUN apt install -y libcurl4-openssl-dev libssl-dev libjansson-dev automake autotools-dev build-essential gcc-5 g++-5 git
RUN update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-5 1

RUN git clone https://github.com/tpruvot/ccminer.git
WORKDIR /ccminer
ADD Makefile.am .
RUN ./build.sh

ENTRYPOINT ["./ccminer"]
CMD ["--version"]