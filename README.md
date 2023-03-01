## 1. First build the container
```bash
docker build -t kakakoto/kathara .
```

## add route to router package between host and guest
sudo ip route add 10.5.5.0/24 via 172.17.0.2
sudo route -n add 10.5.5.0/24 172.17.0.2
