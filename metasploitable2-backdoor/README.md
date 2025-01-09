### performing a metasploitable2 backdoor attack against vsftpd version 2.3.4
---
title: performing a metasploitable2 backdoor attack against vsftpd version 2.3.4
date: 08.01.2025
description: gaining access to the victim's computer
---

## I used 3 virtual machines:

1. pfsense (2.7.2), to create a virtual laboratory, with network settings: adapter 1 - Bridged Adapter & adapter 2 - internal network

2. metasploitable2 | adapter 1 - internal network

3. kali linux VM | adapter 1 - internal network

### !!! For correct operation you need to start all 3 virtual machines !!!

----

<h3 align="center">Attack order and how it works</h3>

<p align="center">You just need to authenticate on the FTP server by entering a username ending in :) and any password</p>

* ![kali tab-1](https://github.com/hellcard/100-days-cyber-security/blob/main/metasploitable2-backdoor/kali/tab-1.sh) - connecting to an FTP server, opening TCP sockets to communicate with the server
* ![kali tab-2](https://github.com/hellcard/100-days-cyber-security/blob/main/metasploitable2-backdoor/kali/tab-2.sh) - gaining access to the system
