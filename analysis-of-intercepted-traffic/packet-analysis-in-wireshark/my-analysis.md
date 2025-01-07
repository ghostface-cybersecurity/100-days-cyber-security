<h2 align="center">My analysis</h2>

* So, we know for sure that the router address was 192.168.1.1, which means we can find something related to it

![image](https://github.com/user-attachments/assets/a28574b0-f668-4e9a-920b-7973e7eb386d)

* The address 192.168.1.104 is very similar to the address of an attacker who, using arp-spoofing, is trying to deceive the router by posing as a victim
* This means that if this is an arp-spoofing attack, then the attacker transmitted packets to the victim, posing as a router, this means that through the attacker we can also find the victim

![image](https://github.com/user-attachments/assets/d72032a7-cd4d-48f2-bc1b-ef48061857bf)

* After analyzing the results, I found the GET-request and the address of the attacker who intercepted it
* Thus, we can assume that IP address 60.254.148.81 is the victim’s IP

![image](https://github.com/user-attachments/assets/8f979480-633d-45de-9efc-79349e3b9257)

* We see that the intended victim communicates only with the attacker, which means it was arp-spoofing
* We see GET-requests and HTTP-requests, from this we conclude that this was indeed the victim’s IP address

<h3 align="center">Results</h3>

#### Router IP: 192.168.1.1
#### Attacker's IP: 192.168.1.104
#### Victim's IP: 60.254.148.81
