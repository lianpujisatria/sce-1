#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
green() { echo -e "\\033[32;1m${*}\\033[0m"; }
red() { echo -e "\\033[31;1m${*}\\033[0m"; }
MYIP=$(wget -qO- ipinfo.io/ip);


IP=$(curl -sS ipv4.icanhazip.com);
date=$(date +"%Y-%m-%d")

clear
echo -e ""
echo -e "--------------------------------------"
echo -e "              BACKUP DATA"
echo -e "--------------------------------------"
echo -e ""
echo -e "[ ${green}INFO${NC} ] Input password for database"
echo -e ""
read -rp " password : " -e InputPass
echo -e ""
sleep 1
if [[ -z $InputPass ]]; then
exit 0
fi
echo -e "[ ${green}INFO${NC} ] Processing... "
mkdir -p /root/backup
sleep 1
NameUser="$MYIP--BACKUP--$date"
#cp -r /root/.acme.sh /root/acme &> /dev/null
#cp -r /root/acme/ /root//backup/ &> /dev/null
cp -r /root/.acme.sh /root/backup/ &> /dev/null
cp /etc/passwd /root/backup/ &> /dev/null
cp /etc/group /root/backup/ &> /dev/null
cp /etc/shadow /root/backup/ &> /dev/null
cp /etc/gshadow /root/backup/ &> /dev/null
cp -r /etc/wireguard /root/backup/wireguard &> /dev/null
cp /etc/ppp/chap-secrets /root/backup/chap-secrets &> /dev/null
cp /etc/ipsec.d/passwd /root/backup/passwd1 &> /dev/null
cp /etc/shadowsocks-libev/akun.conf /root/backup/ss.conf &> /dev/null
cp -r /home/sstp /root/backup/sstp &> /dev/null
cp -r /var/lib/premium-script/ /root/backup/premium-script &> /dev/null
cp -r /etc/v2ray /root/backup/v2ray &> /dev/null
cp -r /etc/trojan /root/backup/trojan &> /dev/null
cp -r /etc/trojan-go /root/backup/trojan-go &> /dev/null
cp -r /usr/local/shadowsocksr/ /root/backup/shadowsocksr &> /dev/null
cp -r /home/vps/public_html /root/backup/public_html &> /dev/null
cp -r /usr/share/nginx/html /root/backup/html
cp -r /etc/cron.d /root/backup/cron.d &> /dev/null
cp /etc/crontab /root/backup/crontab &> /dev/null
cd /root
zip -rP $InputPass $NameUser.zip backup > /dev/null 2>&1

##############++++++++++++++++++++++++#############
LLatest=`date`
Get_Data () {
git clone https://github.com/Afdhan/backup.git /root/user-backup/ &> /dev/null
}

Mkdir_Data () {
mkdir -p /root/user-backup/$NameUser
}

Input_Data_Append () {
if [ ! -f "/root/user-backup/$NameUser/$NameUser-last-backup" ]; then
touch /root/user-backup/$NameUser/$NameUser-last-backup
fi
echo -e "IP Adress         : $IP
Backup Date : $LLatest
" >> /root/user-backup/$NameUser/$NameUser-last-backup
mv /root/$NameUser.zip /root/user-backup/$NameUser/
}

Save_And_Exit () {
    cd /root/user-backup
    git config --global user.email "afdhan134@gmail.com" &> /dev/null
    git config --global user.name "Afdhan" &> /dev/null
    rm -rf .git/ &> /dev/null
    git init &> /dev/null
    git add * &> /dev/null
    git commit -m m &> /dev/null
    git branch -M main &> /dev/null
    git remote add origin https://github.com/Afdhan/backup.git
    git push -f https://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@github.com/Afdhan/backup.git &> /dev/null
}

stts () {
    git status
}
if [ ! -d "/root/user-backup/" ]; then
sleep 1
echo -e "[ ${green}INFO${NC} ] Getting database... "
Get_Data
Mkdir_Data
sleep 1
echo -e "[ ${green}INFO${NC} ] Getting info server... "
Input_Data_Append
sleep 1
echo -e "[ ${green}INFO${NC} ] Processing updating server...... "
Save_And_Exit
sleep 1
echo -e "[ ${green}INFO${NC} ] Show status server...... "
stts
fi
link="https://raw.githubusercontent.com/Afdhan/backup/main/$NameUser/$NameUser.zip"
sleep 1
echo -e "[ ${green}INFO${NC} ] Backup done "
sleep 1
echo -e "[ ${green}INFO${NC} ] Generete Link Backup "
echo
sleep 2
rm /root/.my_backup &> /dev/null
echo -e "$link" >> /root/.my_backup
echo -e "
IP VPS : $IP

BACKUP LINK : $link

- Dhansss X NezaVPN 
- Supported By WorldSSH
"
echo -e ""
echo -e "Link location /root/.my_backup"
echo -e "Use : cat /root/.my_backup"
rm -rf /root/backup &> /dev/null
rm -rf /root/user-backup &> /dev/null
rm -f /root/$NameUser.zip &> /dev/null
echo -e "--------------------------------------"
echo -e ""
