---
title: arp-spoofing
date: 04.01.2025
description: all about arp spoofing
---

## I used 3 virtual machines:

1. pfsense (2.7.2), to create a virtual laboratory, with network settings: adapter 1 - Bridged Adapter & adapter 2 - internal network

2. metasploitable2 | adapter 1 - internal network

3. kali linux VM | adapter 1 - internal network

### !!! For correct operation you need to start all 3 virtual machines !!!
<h3 align="center">order of execution attck</h3>

* ![kali tab-1](https://github.com/hellcard/cyber-security-introduction/blob/main/arp-spoofing-attck/kali/tab-1.sh) - look and look for the victim’s IP and router
* ![kali tab-2](https://github.com/hellcard/cyber-security-introduction/blob/main/arp-spoofing-attck/kali/tab-2.sh) - permission to forward IP packets, forgery of arp packet responses
* ![kali tab-3](https://github.com/hellcard/cyber-security-introduction/blob/main/arp-spoofing-attck/kali/tab-3.sh) - generating packets to deceive the router
* ![kali tab-4](https://github.com/hellcard/cyber-security-introduction/blob/main/arp-spoofing-attck/kali/tab-4.sh) - extracting url | (later) viewing the list of sites that the victim is viewing
* ![metasploitable](https://github.com/hellcard/cyber-security-introduction/blob/main/arp-spoofing-attck/metasploitable/commands.sh) - login and request
* ![kali tab-4](https://github.com/hellcard/cyber-security-introduction/blob/main/arp-spoofing-attck/kali/tab-4.sh) - viewing url requests
* ![kali tab 2 & 3] - write additionally Ctrl+C | To stop spoofing and so that the victim does not notice the attack due to the fact that he has disconnected from the network
* ![kali tab 1 & 4] - write additionally Ctrl+C | To stop viewing the IP and no longer receive requests
