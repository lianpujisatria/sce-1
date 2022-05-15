#!/bin/bash

sysctl -w net.ipv6.conf.all.disable_ipv6=1

sysctl -w net.ipv6.conf.default.disable_ipv6=1

apt update

apt install -y bzip2 gzip coreutils screen curl
apt install python -y
mkdir /var/lib/premium-script;

echo "IP=" >> /var/lib/premium-script/ipvps.conf

wget https://raw.githubusercontent.com/Afdhan/CDN/main/A/I/U/E/O/cfw.sh && chmod +x cfw.sh && ./cfw.sh

wget https://raw.githubusercontent.com/Afdhan/CDN/main/A/I/U/E/O/sw.sh && chmod +x sw.sh && ./sw.sh

#wget https://raw.githubusercontent.com/Afdhan/CDN/main/A/I/U/E/O/ins-vto.sh && chmod +x ins-vto.sh && ./ins-vto.sh

#wget https://raw.githubusercontent.com/Afdhan/CDN/main/A/I/U/E/O/trojango.sh && chmod +x trojango.sh && ./trojango.sh

#wget https://raw.githubusercontent.com/Afdhan/CDN/main/A/I/U/E/O/set-bro.sh && chmod +x set-bro.sh && ./set-bro.sh

wget https://raw.githubusercontent.com/Afdhan/CDN/main/websock.sh && chmod +x websock.sh && ./websock.sh

wget https://afdhan.github.io/sce/ins.sh && chmod +x ins.sh && ./ins.sh

rm -f sc.sh

rm -f cfw.sh

rm -f sw.sh

rm -f ins-vto.sh

rm -f trojango.sh

rm -f ipseco.sh

rm -f set-bro.sh

rm -f websock.sh

rm -f ins.sh


cat > /usr/bin/bersih << END
#!/bin/bash
echo 1 > /proc/sys/vm/drop_caches
echo 2 > /proc/sys/vm/drop_caches
echo 3 > /proc/sys/vm/drop_caches
swapoff -a
swapon -a
ban
clear-log
END
chmod +x /usr/bin/bersih

cat <<EOF> /etc/systemd/system/autosett.service

[Unit]

Description=autosetting

Documentation=https://worldssh.net

[Service]

Type=oneshot

ExecStart=/bin/bash /etc/set.sh

RemainAfterExit=yes

[Install]

WantedBy=multi-user.target

EOF

systemctl daemon-reload

systemctl enable autosett

wget -O /etc/set.sh "https://raw.githubusercontent.com/Afdhan/sc/main/set.sh"

chmod +x /etc/set.sh

echo "1.1.1" > /home/ver

wget -O /usr/bin/essh https://raw.githubusercontent.com/Afdhan/CDN/main/essh.sh && chmod +x /usr/bin/essh

wget -O /usr/bin/vmess https://raw.githubusercontent.com/Afdhan/CDN/main/vmess.sh && chmod +x /usr/bin/vmess

wget -O /usr/bin/trjn https://raw.githubusercontent.com/Afdhan/CDN/main/trjn.sh && chmod +x /usr/bin/trjn

wget -O /usr/bin/xp https://raw.githubusercontent.com/Afdhan/CDN/main/xpw.sh && chmod +x /usr/bin/xp

sed -i "s/DhanZaa/WorldSSH/g" /etc/trojan-go/config.json

sed -i "s/DhanZaa/WorldSSH/g" /etc/v2ray/config.json

sed -i "s/DhanZaa/WorldSSH/g" /etc/v2ray/none.json

clear

figlet -f slant AFDHAN - NEZA | lolcat

echo " "

echo " "

echo "=================================-[ AUTOSCRIPT PREMIUM ]-===========================" | tee -a log-install.txt

echo "" | tee -a log-install.txt

echo "   >>> Service Port" | tee -a log-install.txt

echo "   - OpenSSH                 : 22"  | tee -a log-install.txt

echo "   - OpenVPN                 : TCP 1194, UDP 2200, SSL 442"  | tee -a log-install.txt

echo "   - Stunnel4                : 443, 171"  | tee -a log-install.txt

echo "   - Dropbear                : 109, 143"  | tee -a log-install.txt

echo "   - WebSocket Dropbear      : 8880"  | tee -a log-install.txt

echo "   - WebSocket OpenSSH       : 2095"  | tee -a log-install.txt

echo "   - WebSocket OpenVPN       : 2082"  | tee -a log-install.txt

echo "   - WebSocket TLS           : 443"  | tee -a log-install.txt

echo "   - SSLH Multiplexer        : 443"  | tee -a log-install.txt

echo "   - Squid Proxy             : 3128, 8080 (limit to IP SSH)"  | tee -a log-install.txt

echo "   - Badvpn                  : 7100, 7200, 7300"  | tee -a log-install.txt

echo "   - Nginx                   : 81"  | tee -a log-install.txt

echo "   - Wireguard               : 7070"  | tee -a log-install.txt

echo "   - L2TP/IPSEC VPN          : 1701"  | tee -a log-install.txt

echo "   - PPTP VPN                : 1732"  | tee -a log-install.txt

echo "   - SSTP VPN                : 444"  | tee -a log-install.txt

echo "   - Shadowsocks-R           : 1443-1543"  | tee -a log-install.txt

echo "   - SS-OBFS TLS             : 2443-2543"  | tee -a log-install.txt

echo "   - SS-OBFS HTTP            : 3443-3543"  | tee -a log-install.txt

echo "   - V2RAY Vmess TLS         : 8443"  | tee -a log-install.txt

echo "   - V2RAY Vmess None TLS    : 80"  | tee -a log-install.txt

echo "   - V2RAY Vless TLS         : 2083"  | tee -a log-install.txt

echo "   - V2RAY Vless None TLS    : 2052"  | tee -a log-install.txt

echo "   - TrojanGFW               : 2087"  | tee -a log-install.txt

echo "   - TrojanGO                : 2053"  | tee -a log-install.txt

echo ""  | tee -a log-install.txt

echo "   >>> Server Information & Other Features"  | tee -a log-install.txt

echo "   - Timezone                : Asia/Jakarta (GMT +7)"  | tee -a log-install.txt

echo "   - Fail2Ban                : [ON]"  | tee -a log-install.txt

echo "   - Dflate                  : [ON]"  | tee -a log-install.txt

echo "   - IPtables                : [ON]"  | tee -a log-install.txt

echo "   - Auto-Reboot             : [ON]"  | tee -a log-install.txt

echo "   - IPv6                    : [OFF]"  | tee -a log-install.txt

echo "   - Autoreboot On 00.00-12.00 GMT +7" | tee -a log-install.txt

echo "   - Autobackup Data" | tee -a log-install.txt

echo "   - Restore Data" | tee -a log-install.txt

echo "   - Auto Delete Expired Account" | tee -a log-install.txt

echo "   - Full Orders For Various Services" | tee -a log-install.txt

echo "   - White Label" | tee -a log-install.txt

echo "   - Installation Log --> /root/log-install.txt"  | tee -a log-install.txt

echo ""  | tee -a log-install.txt

echo "=================================-[ AUTOSCRIPT PREMIUM ]-===========================" | tee -a log-install.txt

echo "- Mod By M AFDHAN & NezaVPN" | tee -a log-install.txt

echo ""

sleep 1

if [ ! -e /root/log-install.txt ]; then

  echo -e "Setup Install Bermasalah! Sistem Akan Membuat Direktori Pengulangan" | lolcat

  sleep 0.5

  wget https://raw.githubusercontent.com/Afdhan/sce/main/log.sh && chmod +x log.sh && ./log.sh

  else

  rm -f xoxo.sh

  rm -f xoxoxo.sh

  echo -e "Setup Install Sukses!" | lolcat

fi

rm -f w.sh
sleep 10
reboot
