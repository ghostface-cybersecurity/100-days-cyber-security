---
title: TCP-shells-and-botnets
date: 08.01.2025
description: gaining access to the victim's computer
---

## I used 3 virtual machines:

1. pfsense (2.7.2), to create a virtual laboratory, with network settings: adapter 1 - Bridged Adapter & adapter 2 - internal network

2. metasploitable2 | adapter 1 - internal network

3. kali linux VM | adapter 1 - internal network

### !!! For correct operation you need to start all 3 virtual machines !!!

----

<h3 align="center">gaining access to the victim's computer</h3>

* ![nmap](https://github.com/hellcard/100-days-cyber-security/blob/main/TCP-shells-and-botnets/nmap/commands.sh) - use nmap to scan open ports | find out the port and version of vstftpd 2.3.4 to use the backdoor
* ![metasploitable2 backdoor | vsftpd v2.3.4 backdoor](https://github.com/hellcard/100-days-cyber-security/tree/main/metasploitable2-backdoor) - using a backdoor to gain access to the system
