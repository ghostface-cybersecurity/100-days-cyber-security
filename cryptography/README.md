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

cat res.txt # view result

# === file decryption ===

openssl enc -aes-256-ctr -pbkdf2 -d -a -in res.txt -out newres.txt

# -d - decryption file
# enter the password you previously entered to get the result

cat newres.txt
```

----

<h3 align="center">Email encryption</h3>

<p align="center">There are times when it is necessary to exchange letters via email so that no one who can intercept the traffic can read them, we will use a public key cryptographic system</p>


<h4 align="center">File encryption using the RSA algorithm</h4>


```
# === First, let's generate public and private keys ===

openssl genrsa -out pairkeys.key 2048

# genrsa - generating RSA-keys
# 2024 - length key (recommended 3072)
# -out <file> - output file 

# === read & view key

openssl rsa -text -in pairkeys.key

# rsa - interpretation as a rsa-key
# -text - display in readable format

# === extract key ===

openssl rsa -in pairkeys.key -pubout -out public.key

# -pubout - extract public key

# === treating input as public key ===

openssl rsa -text -pubin -in public.key

# -pubin - treating input as public key

# === using keys ===

# creating a file to be encrypted
echo "Hello, @username" > file.txt

# creating an encrypted binary file
openssl pkeyutl -encrypt -pubin -inkey public.key -in file.txt -out binenc.bin

# pkeyutl - rsautl was deprecated because we use this utility

# converting double file to BASE64 format
openssl base64 -in binenc.bin -out bin64.txt
cat bin64.txt # view file

# === decryption ===

# base64 -> bin:
openssl base64 -d -in bin64.txt -out bin64.bin

# decription
openssl pkeyutl -decrypt -inkey pairkeys.key -in bin64.bin -out res.txt

# view result
cat res.txt
```


<h2 align="center">Extra:</h2>

![ransomware](https://github.com/ghostface-cybersecurity/ransomware) - a simple ransomware program that encrypts just one file

![client-server ransomware](https://github.com/ghostface-cybersecurity/client-server-ransomware) - A ransomware that encrypts one file and contacts the server for decryption. Prototype of a modern ransomware. 
