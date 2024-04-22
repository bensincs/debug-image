from ubuntu:22.04

# Install the necessary packages
RUN apt-get update && apt-get install -y

RUN apt-get install -y netcat curl iputils-ping net-tools wget iproute2 dnsutils libicu-dev tcpdump

RUN curl -O -L https://github.com/enclave-networks/multicast-test/releases/download/multicast-test-v1.0.1.0/multicast-test-linux-x64

RUN chmod +x multicast-test-linux-x64

# run forever
CMD ["/bin/bash"]