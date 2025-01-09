sudo netdiscover # to view IP
nmap -V 192.168.1.101 # running the version detection function to determine the version of an application using a specific port
# OUTPUT (after scan metasploitable2 IP with nmap) (example):

# 21/tcp   open  ftp         vsftpd 2.3.4
# 22/tcp   open  ssh         OpenSSH 4.7p1 Debian 8ubuntu1 (protocol 2.0)
# 23/tcp   open  telnet      Linux telnetd
# 25/tcp   open  smtp        Postfix smtpd
# 53/tcp   open  domain      ISC BIND 9.4.2
# 80/tcp   open  http        Apache httpd 2.2.8 ((Ubuntu) DAV/2)
# 111/tcp  open  rpcbind     2 (RPC #100000)
# 139/tcp  open  netbios-ssn Samba smbd 3.X - 4.X (workgroup: WORKGROUP)
# 445/tcp  open  netbios-ssn Samba smbd 3.X - 4.X (workgroup: WORKGROUP)
# 512/tcp  open  exec        netkit-rsh rexecd
# 513/tcp  open  login       OpenBSD or Solaris rlogind
# 514/tcp  open  tcpwrapped
# 1099/tcp open  java-rmi    GNU Classpath grmiregistry
# 1524/tcp open  bindshell   Metasploitable root shell
# 2049/tcp open  nfs         2-4 (RPC #100003)
# 2121/tcp open  ftp         ProFTPD 1.3.1
# 3306/tcp open  mysql       MySQL 5.0.51a-3ubuntu5
# 5432/tcp open  postgresql  PostgreSQL DB 8.3.0 - 8.3.7
# 5900/tcp open  vnc         VNC (protocol 3.3)
# 6000/tcp open  X11         (access denied)
# 6667/tcp open  irc         UnrealIRCd
# 8009/tcp open  ajp13       Apache Jserv (Protocol v1.3)

nmap -sS 192.168.1.101 # perform a SYN scan to quickly and covertly view open ports

# OUTPUT (example):

# PORT     STATE SERVICE
# 21/tcp   open  ftp
# 22/tcp   open  ssh
# 23/tcp   open  telnet
# 25/tcp   open  smtp
# 53/tcp   open  domain
# 80/tcp   open  http
# 111/tcp  open  rpcbind
# 139/tcp  open  netbios-ssn
# 445/tcp  open  microsoft-ds
# 512/tcp  open  exec
# 513/tcp  open  login


nmap -sF 192.168.1.101 # You can also use FIN scanning to bypass the firewall

# OUTPUT (example):

# PORT     STATE         SERVICE
# 21/tcp   open|filtered ftp
# 22/tcp   open|filtered ssh
# 23/tcp   open|filtered telnet
# 25/tcp   open|filtered smtp
# 53/tcp   open|filtered domain
# 80/tcp   open|filtered http
# 111/tcp  open|filtered rpcbind
# 139/tcp  open|filtered netbios-ssn
# 445/tcp  open|filtered microsoft-ds
# 512/tcp  open|filtered exec
# 513/tcp  open|filtered login
# 514/tcp  open|filtered shell
# 1099/tcp open|filtered rmiregistry

nmap -sX 192.168.1.101 # performing Xmas scanning, which involves using odd packet configurations to prevent detection and obtain system information

# OUTPUT (exmple):

# PORT     STATE         SERVICE
# 21/tcp   open|filtered ftp
# 22/tcp   open|filtered ssh
# 23/tcp   open|filtered telnet
# 25/tcp   open|filtered smtp
# 53/tcp   open|filtered domain
# 80/tcp   open|filtered http
# 111/tcp  open|filtered rpcbind
# 139/tcp  open|filtered netbios-ssn
# 445/tcp  open|filtered microsoft-ds
# 512/tcp  open|filtered exec
# 513/tcp  open|filtered login
# 514/tcp  open|filtered shell
# 1099/tcp open|filtered rmiregistr

