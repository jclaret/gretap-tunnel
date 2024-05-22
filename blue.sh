#!/bin/bash

# Start both pods at the same time and wait for 30 seconds for the other side.
sleep 30
LOCAL_IP=$(kubectl get pods -l app=blue -o jsonpath='{.items[0].status.podIPs[].ip}')
REMOTE_IP=$(kubectl get pods -l app=red -o jsonpath='{.items[0].status.podIPs[].ip}')

ip link add name gretap1 type gretap local ${LOCAL_IP} remote ${REMOTE_IP} ikey 0.0.0.1 okey 0.0.0.1
ip link set gretap1 mtu 1500
ip link set gretap1 up
ip addr add dev gretap1 192.168.1.2/24

sleep infinity
