#!/bin/bash
#!/bin/sh

IP_ADDR=$(hostname -i)
echo "current ip address is ${IP_ADDR}"

cd /opt/weed/bin
./weed server -master.port=9333 -volume.port=8080 -dir="/data" -ip=$IP_ADDR
echo "server running"
