---
title: TCP-shells-and-botnets
date: 24.01.2025
description: gaining access to the victim's computer
---

## I used 3 virtual machines:

1. pfsense (2.7.2), to create a virtual laboratory, with network settings: adapter 1 - Bridged Adapter & adapter 2 - internal network

2. metasploitable2 | adapter 1 - internal network

3. kali linux VM | adapter 1 - internal network

### !!! For correct operation you need to start all 3 virtual machines !!!

----

<h3 align="center">File encryption and decryption</h3>

```
echo "Simple text" > simpletext.txt
cat simpletext.txt # view file

openssl enc -aes-256-ctr -pbkdf2 -e -a -in simpletext.txt -out res.txt

# -aes-256-ctr - use use block cipher aes256ctr
#  |-  aes - use the matching function
#  |- 256 - block size
#  |- ctr - block encryption mode
# -pbkdf2 - key format function
# -e - file encryption command
# -a - converting binary data to BASE64 format for easier terminal output
# -in - name of the file to be encrypted
# -out - name of the file where to write the result

# === after execution openssl will ask for a password, based on which encryption and decryption are generated ===

cat res.txt # view results

# === file decryption ===

openssl enc -aes-256-ctr -pbkdf2 -d -a -in res.txt -out newres.txt

# -d - decryption file
# enter the password you previously entered to get the result

cat newres.txt
```
