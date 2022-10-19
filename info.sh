#!/bin/bash
clear
function table() {
    echo "1. NMAP"
    echo "2. Netdiscvoer"
    echo "3. Maltego"
    echo "95. Exit"
    read sub
} 
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#  " ||||   NMAP STARTING ||| "
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function mynmap() {
while :
do 
    echo "Nmap Started Choose your task" 
    echo "1. listscan" #-p  -only scan specified ports
    echo "2. target scan" #-sL  -lsit targets to scan
    echo "3. disable port scan" #-sn  -disable port scan
    echo "4. UDP scan" #-sU   - UDP Scan
    echo "5. ports scan" #-sV   -open ports to determince services/version info
    echo "6. agment packets Firewall & Spoofing" #-f   -FIREWALL/IDS EVASION AND SPOOFING
    echo "7. Spoof source address scan" #-S  <IP_Address>
    echo "99. exit"

read choice 
case $choice in 
99) exit;;
1) echo "enter ip"; read ip ; nmap -p $ip ;; 
2) echo "enter ip"; read ip ; nmap -sL $ip ;;
3) echo "enter ip"; read ip ; nmap -sn $ip ;;
4) echo "enter ip"; read ip ; nmap -sU $ip ;;
5) echo "enter ip"; read ip ; nmap -sV $ip ;;
6) echo "enter ip"; read ip ; sudo nmap -f $ip ;;
7) echo "enter ip"; read ip ; nmap -S $ip ;;
*) echo "invalid input"
esac
done
}
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#  " ||||   NET DISCOVER STARTING ||| "
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function mynetdicover () {
while :
do 

  echo "Netdiscover tool started check your task" 
  echo "1  Device your network "   #-i device: your network device
  echo "2. range scan"  # -r range: scan a given range instead of auto scan. 192.168.6.0/24,/16,/8
  echo "3. file scan" # -l file: scan the list of ranges contained into the given file
  echo "4. filter scan" # -F filter: customize pcap filter expression (default: "arp")
  echo "5. time scan" # -s time: time to sleep between each ARP request (milliseconds)
  echo "6. count scan" # -c count: number of times to send each ARP request (for nets with packet loss)
  echo "7. node scan" # -n node: last source IP octet used for scanning (from 2 to 253)
  echo "8. ignore home config file scan" # -d ignore home config files for autoscan and fast mode
  echo "9. fastmode scan" # -f enable fastmode scan, saves a lot of time, recommended for auto
  echo "10. print result after stop/active program" # -P print results in a format suitable for parsing by another program and stop after active scan
  echo "11. active scan" # -L similar to -P but continue listening after the active scan is completed
  echo "12. enablie sleep time" # -S enable sleep time suppression between each request (hardcore mode)
  echo "13. passive mode" # -p passive mode: do not send anything, only sniff
  echo "14. file scan know MACs and host names" # -m file: scan a list of known MACs and host names
  echo "99. exit"

read choice 
case $choice in 
99) exit;;
1) echo "enter ip"; read ip ; sudo netdiscover -i $ip ;;
2) echo "enter ip"; read ip ; sudo netdiscover -r $ip ;;
3) echo "enter ip"; read ip ; sudo netdiscover -l $ip ;;
4) echo "enter ip"; read ip ; sudo netdiscover -F $ip ;;
5) echo "enter ip"; read ip ; sudo netdiscover -s $ip ;;
6) echo "enter ip"; read ip ; sudo netdiscover -c $ip ;;
7) echo "enter ip"; read ip ; sudo netdiscover -n $ip ;;
8) echo "enter ip"; read ip ; sudo netdiscover -d $ip ;;
9) echo "enter ip"; read ip ; sudo netdiscover -f $ip ;;
10) echo "enter ip"; read ip ; sudo netdiscover -P $ip ;;
11) echo "enter ip"; read ip ; sudo netdiscover -L $ip ;;
12) echo "enter ip"; read ip ; sudo netdiscover -S $ip ;;
13) echo "enter ip"; read ip ; sudo netdiscover -p $ip ;;
14) echo "enter ip"; read ip ; sudo netdiscover -m $ip ;;
*) echo "invalid input"
esac
done
}
 
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#  " ||||   MALTIGO START ||| "
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function mymaltigo() {
while :
do 
    echo "Maltio is started"
    echo "1. Install Maltigo"
    echo "2. Run Maltio"
    echo "99. exit"

read choice 
case $choice in 
99) exit;;
    1) sudo git clone https://github.com/paterva/maltego-trx.git ;;
    2) maltego;;
    *) echo "invliad input";;
esac
done
}


#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
#  " ||||   OUTLINE START ||| "
#%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

echo "+----------------------------------------------------------+"
echo " |   |    (IGT) INFORMATINO GETHERING TOOL     |   |  "
echo "+----------------------------------------------------------+"
echo ""
echo "1. Select Information Gethering Tool"
echo "95  Exit"
echo "Enter Choice"
read choice
    case $choice in 
    95) exit;;
    1) echo "Information Gethering tools: (N)Nmap |(Net)netdiscover | (M) Maltego"
    read name 
        case $name in 
        N) mynmap ;;
        Net) mynetdicover ;;
        M) mymaltigo ;;
        esac 
    esac
