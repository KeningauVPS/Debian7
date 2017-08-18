#!/bin/bash
#Script auto create trial user SSH
#yg akan expired setelah 1 hari
#modified by har1st

IP=`dig +short myip.opendns.com @resolver1.opendns.com`

Login=trial`</dev/urandom tr -dc X-Z0-9 | head -c4`
hari="1"
Pass=`</dev/urandom tr -dc a-f0-9 | head -c9`

useradd -e `date -d "$hari days" +"%Y-%m-%d"` -s /bin/false -M $Login
echo -e "$Pass\n$Pass\n"|passwd $Login &> /dev/null
echo -e ""
echo -e "\e[38;1m============================="
echo -e "\e[35;1m======Info Akun SSH/VPN======"
echo -e "\e[33;1m=[Host: \e[35;1m$IP"
echo -e "\e[33;1m=[Username: \e[35;1m$Login"
echo -e "\e[33;1m=[Password: \e[35;1m$Pass"
echo -e "\e[33;1mEXPIRED   : \e[35;1m$exp"
echo -e "\e[38;1m======Create by har1st™======"
echo -e "\e[33;1m=[Port OpenSSH: \e[35;1m22,143"
echo -e "\e[33;1m=[Port Dropbear: \e[35;1m80,443"
echo -e "\e[33;1m=[Port Squid: \e[35;1m8080,3128"
echo -e "\e[33;1m=[Config OpenVPN (TCP 1194): \e[35;1mhttp://$IP:85/client.ovpn"
echo -e "\e[38;1m============================="
echo -e "\e[36;1mhar1s™_ssh"
echo -e "\e[30;1m"
