8 # open shell from main menu
tcpdump # in this case, all packets passing through the system will be intercepted
# (ctrl+C) for exit


# you can also view packets passing through a specific port, for example 443
tcpdump tcp port 443 -n
# or
tcpdump tcp port 443

# you can also save a record of these packages to a file
tcpdump -i <interface> <number of packages> -w <filename.pcap>

exit # return to main menu
