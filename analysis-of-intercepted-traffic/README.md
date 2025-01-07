---
title: analysis of intercepted traffic
date: 06.01.2025
description: use wireshark & tcpdump with arp-spoofing
---

## I used 3 VM:
1. pfsense (2.7.2), to create a virtual laboratory, with network settings: adapter 1 - Bridged Adapter & adapter 2 - internal network
2. metasploitable2 | adapter 1 - internal network
3. kali linux VM | adapter 1 - internal network

### !!! For correct operation you need to start all 3 virtual machines !!!

_________

<h3 align="center">Sequence of actions to perform analysis of intercepted traffic</h3>

----

<h4 align="center">Without arp-spoofing (we will create the traffic ourselves) with wireshark</h4>

* ![kali tab-1](https://github.com/hellcard/100-days-cyber-security/blob/main/analysis-of-intercepted-traffic/kali/tab-1.sh) - install & open wireshark
* ![some commands from metasploitable2](https://github.com/hellcard/100-days-cyber-security/blob/main/analysis-of-intercepted-traffic/metasploitable/commands.sh) - login and read IP
* go to the browser, follow the link http://192.168.1.101/ | <192.168.1.101> - virtual machine IP metasploitable
* ![wireshark](https://github.com/hellcard/100-days-cyber-security/blob/main/analysis-of-intercepted-traffic/wireshark/filter-%26-operations.md) - work with wireshark

----

<h4 align="center">With arp-spoofing & wireshark</h4>

* ![arp-spoofing attk](https://github.com/hellcard/100-days-cyber-security/tree/main/arp-spoofing-attck) - we begin to carry out arp-spoofing 
* | $ sudo urlsnarf -i eth0 | -  listening on eth0 [tcp port 80 or port 8080 or port 3128]
* ![wireshark](https://github.com/hellcard/100-days-cyber-security/blob/main/analysis-of-intercepted-traffic/wireshark/filter-%26-operations.md) - open & start with wireshark
* ![some commands metasploitable](https://github.com/hellcard/100-days-cyber-security/blob/main/analysis-of-intercepted-traffic/metasploitable/arpcommands.sh) - login & wget
* ![wireshark](https://github.com/hellcard/100-days-cyber-security/blob/main/analysis-of-intercepted-traffic/wireshark/filter-%26-operations.md) - filter the receiver and source with the filter command: | ip.dst == 192.168.1.101 || ip.src == 192.168.1.101 | & view the content of web pages by recovering data from the packet stream

----

<h4 align="center">Intercepting traffic on port 80 using the pfSense router</h4>
<p align="center">All traffic in our virtual lab goes through the pfSense firewall as we have configured it with the following settings. this means that we can capture packets from the Kali Linux virtual machine using tcpdump commands.</p>

* ![pfSense]() - pfSense commands
* [ kali ] - start the Kali Linux virtual machine and open the browser and create traffic by visiting sites
* [ pfSense ] - view traffic
* ![pfSense]() - view additional tcpdump commands 
