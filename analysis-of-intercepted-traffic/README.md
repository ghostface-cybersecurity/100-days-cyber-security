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

<h3 align="center">sequence of actions to perform analysis of intercepted traffic</h3>

<h4 align="center">Without arp-spoofing (we will create the traffic ourselves) with wireshark</h4>

* ![kali tab-1](https://github.com/hellcard/100-days-cyber-security/blob/main/analysis-of-intercepted-traffic/kali/tab-1.sh) - install & open wireshark
* ![some commands from metasploitable2](https://github.com/hellcard/100-days-cyber-security/blob/main/analysis-of-intercepted-traffic/metasploitable/commands.sh) - login and read IP
* go to the browser, follow the link http://192.168.1.101/ | <192.168.1.101> - virtual machine IP metasploitable
* ![wireshark](https://github.com/hellcard/100-days-cyber-security/blob/main/analysis-of-intercepted-traffic/wireshark/filter-%26-operations.md) - work with wireshark


