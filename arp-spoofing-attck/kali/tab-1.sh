# Tab-1
sudo -i # root
apt-get update 
apt-get install dsniff # install dsniff for use arpspoof tool

netdiscover # scans the network for IP & MAC addresses, sending arp-requests to everyone IP-adresses
# output:
# 192.168.1.1 - since this IP address is lower, it means it is a router
# 192.168.1.101 - this means this is the "victim's computer" (metasploitable2)
