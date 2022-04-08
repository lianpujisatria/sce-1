#!/bin/bash

rm -f cf.sh

rm -f rec.sh

rm -f websock.sh

rm -f wild.sh

rm -rf master.zip

figlet -f slant Waiting... | lolcat

cd /usr/bin
wget -O ban "https://raw.githubusercontent.com/Afdhan/sce/main/kill.sh"
wget -O resett "https://raw.githubusercontent.com/Afdhan/esesha/main/rrs.sh"
wget -O backup "https://afdhan.github.io/sce/newb.sh"
wget -O restore "https://raw.githubusercontent.com/Afdhan/esesha/main/restore.sh"

wget -O add-host "https://raw.githubusercontent.com/Afdhan/esesha/main/add-host.sh"

wget -O menu "https://raw.githubusercontent.com/Afdhan/esesha/main/menu.sh"

wget -O usernew "https://raw.githubusercontent.com/Afdhan/esesha/main/usernew.sh"

wget -O hapus "https://raw.githubusercontent.com/Afdhan/esesha/main/hapus.sh"

wget -O member "https://raw.githubusercontent.com/Afdhan/esesha/main/member.sh"

wget -O delete "https://raw.githubusercontent.com/Afdhan/esesha/main/delete.sh"

wget -O cek "https://raw.githubusercontent.com/Afdhan/esesha/main/cek.sh"

wget -O restart "https://raw.githubusercontent.com/Afdhan/esesha/main/restart.sh"

wget -O info "https://raw.githubusercontent.com/Afdhan/esesha/main/info.sh"

wget -O speedtest "https://raw.githubusercontent.com/Afdhan/esesha/main/speedtest_cli.py"

wget -O ram "https://raw.githubusercontent.com/Afdhan/esesha/main/ram.sh"

wget -O renew "https://raw.githubusercontent.com/Afdhan/esesha/main/renew.sh"

wget -O autokill "https://raw.githubusercontent.com/Afdhan/esesha/main/autokill.sh"

wget -O ceklim "https://raw.githubusercontent.com/Afdhan/esesha/main/ceklim.sh"

wget -O tendang "https://raw.githubusercontent.com/Afdhan/esesha/main/tendang.sh"

wget -O change-port "https://raw.githubusercontent.com/Afdhan/esesha/main/change.sh"

wget -O port-ovpn "https://raw.githubusercontent.com/Afdhan/esesha/main/port-ovpn.sh"

wget -O port-ssl "https://raw.githubusercontent.com/Afdhan/esesha/main/port-ssl.sh"

wget -O port-wg "https://raw.githubusercontent.com/Afdhan/esesha/main/port-wg.sh"

wget -O port-tr "https://raw.githubusercontent.com/Afdhan/esesha/main/port-tr.sh"

wget -O port-sstp "https://raw.githubusercontent.com/Afdhan/esesha/main/port-sstp.sh"

wget -O port-squid "https://raw.githubusercontent.com/Afdhan/esesha/main/port-squid.sh"

wget -O port-ws "https://raw.githubusercontent.com/Afdhan/esesha/main/port-ws.sh"

wget -O port-vless "https://raw.githubusercontent.com/Afdhan/esesha/main/port-vless.sh"

wget -O wbmn "https://raw.githubusercontent.com/Afdhan/esesha/main/webmin.sh"

wget -O xp "https://raw.githubusercontent.com/Afdhan/esesha/main/xp.sh"

wget -O hostnya "https://raw.githubusercontent.com/Afdhan/esesha/main/host.sh"

wget -O auto-reboot "https://raw.githubusercontent.com/Afdhan/esesha/main/auto-reboot.sh"

wget -O add-ws "https://raw.githubusercontent.com/Afdhan/esesha/main/add-ws.sh"

wget -O add-vless "https://raw.githubusercontent.com/Afdhan/esesha/main/add-vless.sh"

wget -O add-tr "https://raw.githubusercontent.com/Afdhan/CDN/main/A/I/U/E/O/trgo.sh"

wget -O del-ws "https://raw.githubusercontent.com/Afdhan/esesha/main/del-ws.sh"

wget -O del-vless "https://raw.githubusercontent.com/Afdhan/esesha/main/del-vless.sh"

wget -O del-tr "https://raw.githubusercontent.com/Afdhan/CDN/main/A/I/U/E/O/del-trgo.sh"

wget -O cek-ws "https://raw.githubusercontent.com/Afdhan/esesha/main/cek-ws.sh"

wget -O cek-vless "https://raw.githubusercontent.com/Afdhan/esesha/main/cek-vless.sh"

wget -O cek-tr "https://raw.githubusercontent.com/Afdhan/esesha/main/cek-tr.sh"

wget -O renew-ws "https://raw.githubusercontent.com/Afdhan/esesha/main/renew-ws.sh"

wget -O renew-vless "https://raw.githubusercontent.com/Afdhan/esesha/main/renew-vless.sh"

wget -O renew-tr "https://raw.githubusercontent.com/Afdhan/esesha/main/renew-tr.sh"

wget -O certv2ray "https://raw.githubusercontent.com/Afdhan/esesha/main/cert.sh"

wget -O status "https://raw.githubusercontent.com/Afdhan/sce/main/st.sh"

wget -O bw "https://raw.githubusercontent.com/Afdhan/esesha/main/bandwith.sh"

wget -O clear-log "https://raw.githubusercontent.com/Afdhan/esesha/main/clear-log.sh"

wget -O poin "https://raw.githubusercontent.com/Afdhan/CDN/main/A/I/U/E/O/poin.sh"

chmod +x resett

chmod +x ban

chmod +x add-host

chmod +x menu

chmod +x usernew

chmod +x trial

chmod +x hapus

chmod +x member

chmod +x delete

chmod +x cek

chmod +x restart

chmod +x info

chmod +x about

chmod +x autokill

chmod +x tendang

chmod +x ceklim

chmod +x speedtest

chmod +x ram

chmod +x renew

chmod +x change-port

chmod +x port-ovpn

chmod +x port-ssl

chmod +x port-wg

chmod +x port-sstp

chmod +x port-tr

chmod +x port-squid

chmod +x port-ws

chmod +x port-vless

chmod +x wbmn

chmod +x xp

chmod +x xp-ws

chmod +x updatee

chmod +x hostnya

chmod +x auto-reboot

chmod +x add-ws

chmod +x add-vless

chmod +x add-tr

chmod +x del-ws

chmod +x del-vless

chmod +x del-tr

chmod +x cek-ws

chmod +x cek-vless

chmod +x cek-tr

chmod +x renew-ws

chmod +x renew-vless

chmod +x renew-tr

chmod +x certv2ray

chmod +x status

chmod +x bw

chmod +x clear-log

chmod +x poin

cd

echo "0 0 * * * root clear-log && xp" >> /etc/crontab

echo "*/5 0 * * * root echo 3 > /proc/sys/vm/drop_caches && swapoff -a && swapon -a && ban" > /etc/cron.d/cache_ban

systemctl restart cron

clear

rm -f ins.sh
