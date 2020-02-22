
FROM debian:buster-slim

RUN apt update && \
    apt install git wget p7zip python python-dev python-dnspython libssl-dev libssl1.1 python-numpy python-scipy && \
    git clone https://github.com/anonion0/nsec3map.git
    wget https://hashcat.net/files/hashcat-5.1.0.7z
    cd nsec3map && \
    python setup.py install && \
    cd \
    7zr x hashcat-5.1.0.7z && \
    ln -s /hashcat-5.1.0/hashcat64.bin /usr/bin/hashcat

