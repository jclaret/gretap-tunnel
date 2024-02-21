FROM registry.fedoraproject.org/fedora-minimal
RUN microdnf install tcpdump strace iproute \
    iputils net-tools ethtool kubernetes-client \
    iperf3 -y && microdnf clean all
