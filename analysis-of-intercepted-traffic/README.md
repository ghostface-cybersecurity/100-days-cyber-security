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

<h4 align="center">Without arp-spoofing (we will create the traffic ourselves)</h4>

* 
