This script prompts the user to enter an IP address or hostname. It stores the user's input in the variable "target."

The script then runs a variety of Nmap commands, each with a different option:
-sS: TCP SYN scan
-sU: UDP scan
-sC: default script scan
-A: Enable OS detection, version detection, script scanning, and traceroute

Before every Nmap command it prints the command, for example "Running TCP SYN scan..."

The script then redirects the output of each command to a text file called output.txt. The last line of the script converts the output.txt to pdf with the title "VIEH Nmap automator"

Documentation:

Make the script executable by running the command chmod +x scriptname.sh.
Run the script by typing ./nmap.sh and press enter.
It will prompt you to enter the IP or hostname of the target.
It will run various Nmap commands on the target and the output will be stored in output.txt file.
Before every Nmap command, it will print the command on the terminal
It will convert the output.txt to pdf with the title "VIEH Nmap automator"
Note: This script uses the enscript and ps2pdf commands to convert the text file to a PDF. These commands may not be installed on your system by default. You may need to install them before running the script.
