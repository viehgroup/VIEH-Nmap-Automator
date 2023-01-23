#!/bin/bash

echo "before running this script make sure you're a root user"

apt install nmap
apt install figlet
figlet VIEH Nmap Automator
echo "Enter the IP or hostname:"
read target

echo "Running TCP SYN scan..."
nmap -sS $target > output.txt
echo "Running UDP scan..."
nmap -sU $target >> output.txt
echo "Running default script scan..."
nmap -sC $target >> output.txt
echo "Running OS detection, version detection, script scanning, and traceroute..."
nmap -A $target >> output.txt
echo "Running aggressive scan with timing 4 and fast mode..."
nmap -T4 -F $target >> output.txt
echo "Running OS detection..."
nmap -O $target >> output.txt
echo "Running service version detection..."
nmap -sV $target >> output.txt
echo "Running script scan for vulnerabilities..."
nmap -sC --script=vuln $target >> output.txt
echo "Running scan for all ports..."
nmap -p- $target >> output.txt
echo "Running list scan..."
nmap -sL $target >> output.txt
echo "Running scan for top 30 ports..."
nmap --top-ports 30 $target >> output.txt
echo "Running script scan for http-title..."
nmap -Pn --script=http-title $target >> output.txt
echo "Running script scan for ssl-cert..."
nmap -sS --script=ssl-cert $target >> output.txt
echo "Running script scan for ssl-enum-ciphers..."
nmap -sS --script=ssl-enum-ciphers $target >> output.txt
echo "Running script scan for smb-os-discovery..."
nmap --script=smb-os-discovery $target >> output.txt
echo "Running script scan for smb-enum-shares..."
nmap --script=smb-enum-shares $target >> output.txt
echo "Running script scan for smb-enum-users..."
nmap --script=smb-enum-users $target >> output.txt
echo "Running script scan for smb-enum-domains..."
nmap --script=smb-enum-domains $target >> output.txt
echo "Running script scan for smb-enum-processes..."
nmap --script=smb-enum-processes $target >> output.txt
echo "Running script scan for smb-enum-sessions..."
nmap --script=smb-enum-sessions $target >> output.txt
echo "Running script scan for smb-enum-services..."
nmap --script=smb-enum-services $target >> output.txt
echo "Running script scan for smb-enum-lsarpc..."
nmap --script=smb-enum-lsarpc $target >> output.txt
echo "Running script scan for smb-enum-snmp..."
nmap --script=smb-enum-snmp $target >> output.txt
echo "Running script scan for smb-vuln-ms17-010..."
nmap --script=smb-vuln-ms17-010 $target >> output.txt
echo "Running script scan for smb-vuln-cve-2017-7
nmap --script=smb-vuln-cve-2017-7 $target >> output.txt
echo "Running script scan for smb-vuln-ms08-067..."
nmap --script=smb-vuln-ms08-067 $target >> output.txt
echo "Running script scan for smb-vuln-ms10-054..."
nmap --script=smb-vuln-ms10-054 $target >> output.txt
echo "Running script scan for smb-vuln-ms10-061..."
nmap --script=smb-vuln-ms10-061 $target >> output.txt
echo "Running script scan for smb-vuln-regsvc-dos..."
nmap --script=smb-vuln-regsvc-dos $target >> output.txt

echo "Converting output to pdf..."
enscript output.txt -o - | ps2pdf - "VIEH Nmap automator.pdf"
