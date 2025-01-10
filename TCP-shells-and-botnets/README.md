---
title: TCP-shells-and-botnets
date: 09.01.2025
description: gaining access to the victim's computer
---

## I used 3 virtual machines:

1. pfsense (2.7.2), to create a virtual laboratory, with network settings: adapter 1 - Bridged Adapter & adapter 2 - internal network

2. metasploitable2 | adapter 1 - internal network

3. kali linux VM | adapter 1 - internal network

### !!! For correct operation you need to start all 3 virtual machines !!!

----

<h3 align="center">Gaining access to the victim's computer</h3>

* ![nmap](https://github.com/hellcard/100-days-cyber-security/blob/main/TCP-shells-and-botnets/nmap/commands.sh) - use nmap to scan open ports | find out the port and version of vstftpd 2.3.4 to use the backdoor
* ![metasploitable2 backdoor | vsftpd v2.3.4 backdoor](https://github.com/hellcard/100-days-cyber-security/tree/main/metasploitable2-backdoor) - using a backdoor to gain access to the system
* download/create ![reverse-shell-script](https://github.com/hellcard/reverse_shell)
* ![kali](https://github.com/hellcard/100-days-cyber-security/tree/main/TCP-shells-and-botnets/kali) - launch reverse shell
* ![kali tab-1](https://github.com/hellcard/100-days-cyber-security/blob/main/TCP-shells-and-botnets/kali/tab-1.sh) - after launch you will be able to execute commands

----

<h3 align="center">Extra</h3>

* ![simple botnet](https://github.com/hellcard/simple-botnet/tree/main) - this botnet implements a DDoS attck when this script is executed on several devices
