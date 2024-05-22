FROM registry.fedoraproject.org/fedora-minimal
RUN microdnf install tcpdump strace iproute nmap rsync \
    iputils net-tools ethtool kubernetes-client hping3 \
    iperf3 python3 -y && microdnf clean all
