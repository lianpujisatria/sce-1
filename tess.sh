#!/bin/bash
red='\e[1;31m'
green='\e[0;32m'
NC='\e[0m'
cyan='\x1b[96m'
white='\x1b[37m'
bold='\033[1m'
off='\x1b[m'

AKTIF="Aktif [ ${green}Running${NC} ]"
ERROR="Error [ ${red}Not Running${NC} ]"

dahlah=("")
mantap=("")



 min=1
 sec=0
        
                 while [ $min -ge 0 ]; do
                         while [ $sec -ge 0 ]; do
                                # echo -ne "$hour:$min:$sec\033[0K\r"
                                 waktu="$min:$sec\033[0K\r"
                                 let "sec=sec-1"
                                 sleep 1
                systemctl restart ws-dropbear
                systemctl restart ws-openssh
                systemctl restart ws-openvpn
                systemctl restart ws-stunnel
                systemctl restart v2ray
                systemctl restart v2ray@none
                systemctl restart v2ray@vless
                systemctl restart v2ray@vnone
                systemctl restart trojan
                systemctl restart ssh
                systemctl restart ssrmu
                systemctl restart stunnel4
                systemctl restart openvpn
                systemctl restart dropbear
            done
            sec=59
            let "min=min-1"
                systemctl restart ws-dropbear
                systemctl restart ws-openssh
                systemctl restart ws-openvpn
                systemctl restart ws-stunnel
                systemctl restart v2ray
                systemctl restart v2ray@none
                systemctl restart v2ray@vless
                systemctl restart v2ray@vnone
                systemctl restart trojan
                systemctl restart ssh
                systemctl restart ssrmu
                systemctl restart stunnel4
                systemctl restart openvpn
                systemctl restart dropbear
      done                 
         
#=================================================================================================

wsdrop=$(systemctl status ws-dropbear | grep -i "active (running)")
wstls=$(systemctl status ws-stunnel | grep -i "active (running)")
wsopen=$(systemctl status ws-openssh | grep -i "active (running)")
wsovpn=$(systemctl status ws-openvpn | grep -i "active (running)")

v2ray=$(systemctl status v2ray | grep -i "active (running)")
v2none=$(systemctl status v2ray@none | grep -i "active (running)")
vless=$(systemctl status v2ray@vless | grep -i "active (running)")
vnone=$(systemctl status v2ray@vnone | grep -i "active (running)")
trojan=$(systemctl status trojan | grep -i "active (running)")
ipsec=$(systemctl status ipsec | grep -i "active (running)")
shadow=$(systemctl status shadowsocks-libev | grep -i "active (running)")
ssr=$(systemctl status ssrmu | grep -i "active (running)")
sstp=$(systemctl status accel-ppp | grep -i "active (running)")
l2tp=$(systemctl status xl2tpd | grep -i "active (running)")
pptp=$(systemctl status pptpd | grep -i "active (running)")
wg=$(systemctl status wg-quick@wg0 | grep -i "active (exited)")

ssh=$(systemctl status ssh | grep -i "active (running)")
ssl=$(systemctl status stunnel4 | grep -i "active (running)")
drop=$(systemctl status dropbear | grep -i "active (running)")
ovpn=$(systemctl status openvpn | grep -i "active (exited)")
nginx=$(systemctl status nginx | grep -i "active (running)")
squid=$(systemctl status squid | grep -i "active (running)")
cron=$(systemctl status cron | grep -i "active (running)")
fail2ban=$(systemctl status fail2ban | grep -i "active (running)")
vnstat=$(systemctl status vnstat | grep -i "active (running)")

#=================================================================================================

if [[ $wsdrop == "" ]]; then
      swsdrop=$ERROR
      ingfo="WebSocket Dropbear"
      dahlah+=("1")
else
      swsdrop=$AKTIF
      mantap+("1")
fi

if [[ $wstls == "" ]]; then
      swstls=$ERROR
      ingfo="WebSocket TLS"
      dahlah+=("1")
else
      swstls=$AKTIF
      mantap+=("1")
fi

if [[ $wsopen == "" ]]; then
      swsopen=$ERROR
      ingfo="WebSocket OpenSSH"
      dahlah+=("1")
else
      swsopen=$AKTIF
      mantap+=("1")
fi

if [[ $wsovpn == "" ]]; then
      swsovpn=$ERROR
      ingfo="WebSocket OpenVPN"
      dahlah+=("1")
else
      swsovpn=$AKTIF
      mantap+=("1")
fi

if [[ $v2ray == "" ]]; then
      sv2ray=$ERROR
      ingfo="V2ray/VMess TLS"
      dahlah+=("1")
else
      sv2ray=$AKTIF
      mantap+=("1")
fi

if [[ $v2none == "" ]]; then
      sv2none=$ERROR
      ingfo="V2ray/VMess NON-TLS"
      dahlah+=("1")
else
      sv2none=$AKTIF
      mantap+=("1")
fi

if [[ $vless == "" ]]; then
      svless=$ERROR
      ingfo="V2ray/VLess TLS"
      dahlah+=("1")
else
      svless=$AKTIF
      mantap+=("1")
fi

if [[ $vnone == "" ]]; then
      svnone=$ERROR
      ingfo="V2ray/VLess NON-TLS"
      dahlah+=("1")
else
      svnone=$AKTIF
      mantap+=("1")
fi

if [[ $trojan == "" ]]; then
      strojan=$ERROR
      ingfo="Trojan"
      dahlah+=("1")
else
      strojan=$AKTIF
      mantap+=("1")
fi

if [[ $ipsec == "" ]]; then
      sipsec=$ERROR
      ingfo="IPSec Services"
      dahlah+=("1")
else
      sipsec=$AKTIF
      mantap+=("1")
fi

if [[ $shadow == "" ]]; then
      sshadow=$ERROR
      ingfo="Shadowsocks OBFS"
      dahlah+=("1")
else
      sshadow=$AKTIF
      mantap+=("1")
fi

if [[ $ssr == "" ]]; then
      sssr=$ERROR
      ingfo="ShadowsocksR/SSR"
      dahlah+=("1")
else
      sssr=$AKTIF
      mantap+=("1")
fi

if [[ $sstp == "" ]]; then
      ssstp=$ERROR
      ingfo="SSTP"
      dahlah+=("1")
else
      ssstp=$AKTIF
      mantap+=("1")
fi

if [[ $l2tp == "" ]]; then
      sl2tp=$ERROR
      ingfo="L2TP"
      dahlah+=("1")
else
      sl2tp=$AKTIF
      mantap+=("1")
fi

if [[ $pptp == "" ]]; then
      spptp=$ERROR
      ingfo="PPTP"
      dahlah+=("1")
else
      spptp=$AKTIF
      mantap+=("1")
fi

if [[ $wg == "" ]]; then
      swg=$ERROR
      ingfo="Wireguard"
      dahlah+=("1")
else
      swg=$AKTIF
      mantap+=("1")
fi

if [[ $ssh == "" ]]; then
      sssh=$ERROR
      ingfo="OpenSSH"
      dahlah+=("1")
else
      sssh=$AKTIF
      mantap+=("1")
fi

if [[ $ssl == "" ]]; then
      sssl=$ERROR
      ingfo="Stunnel4"
      dahlah+=("1")
else
      sssl=$AKTIF
      mantap+=("1")
fi

if [[ $drop == "" ]]; then
      sdrop=$ERROR
      ingfo="Dropbear"
      dahlah+=("1")
else
      sdrop=$AKTIF
      mantap+=("1")
fi

if [[ $ovpn == "" ]]; then
      sovpn=$ERROR
      ingfo="OpenVPN"
      dahlah+=("1")
else
      sovpn=$AKTIF
      mantap+=("1")
fi

if [[ $nginx == "" ]]; then
      snginx=$ERROR
      ingfo="Nginx"
      dahlah+=("1")
else
      snginx=$AKTIF
      mantap+=("1")
fi

if [[ $squid == "" ]]; then
      ssquid=$ERROR
      ingfo="Squid"
      dahlah+=("1")
else
      ssquid=$AKTIF
      mantap+=("1")
fi

if [[ $cron == "" ]]; then
      scron=$ERROR
      ingfo="Cron Services"
      dahlah+=("1")
else
      scron=$AKTIF
      mantap+=("1")
fi

if [[ $fail2ban == "" ]]; then
      sfail2ban=$ERROR
      ingfo="Fail2Ban Services"
      dahlah+=("1")
else
      sfail2ban=$AKTIF
      mantap+=("1")
fi

if [[ $vnstat == "" ]]; then
      svnstat=$ERROR
      ingfo="VnStats Services"
      dahlah+=("1")
else
      svnstat=$AKTIF
      mantap+=("1")
fi



jumlah1=${#mantap[@]}
jumlah2=${#dahlah[@]}

if [[ jumlah1 == "" ]]; then
     jumlah_aktif=0
else
     jumlah_aktif=$jumlah1
fi

if [[ jumlah2 == "" ]]; then
    jumlah_error=0
else
    jumlah_error=$jumlah2
fi

#=================================================================================================
clear

echo -e "###################################################################################" | lolcat
echo -e ""
echo -e "${cyan}==================================-[ SERVICES STATUS ]-=============================${off}"
echo -e ""
echo -e "   - Dropbear                              : $sdrop "
echo -e "   - OpenSSH                               : $sssh "
echo -e "   - Stunnel4                              : $sssl "
echo -e "   - OpenVPN                               : $sovpn "
echo -e "   - WebSocket Dropbear                    : $swsdrop"
echo -e "   - WebSocket OpenSSH                     : $swsopen"
echo -e "   - WebSocket OpenVPN                     : $swsovpn"
echo -e "   - WebSocket TLS                         : $swstls"
echo -e "   - VMess TLS                             : $sv2ray "
echo -e "   - VMess NON-TLS                         : $sv2none "
echo -e "   - VLess TLS                             : $svless "
echo -e "   - VLess NON-TLS                         : $svnone "
echo -e "   - Shadowsocks                           : $sshadow "
echo -e "   - Wireguard                             : $swg "
echo -e "   - Trojan                                : $strojan "
echo -e "   - IPSec                                 : $sipsec "
echo -e "   - SSR                                   : $sssr "
echo -e "   - SSTP                                  : $ssstp "
echo -e "   - PPTP                                  : $spptp "
echo -e "   - L2TP                                  : $sl2tp"
echo -e "   - Nginx                                 : $snginx "
echo -e "   - Squid                                 : $ssquid "
echo -e "   - Cron                                  : $scron "
echo -e "   - Fail2Ban                              : $sfail2ban "
echo -e "   - VnStats                               : $svnstat "
echo -e ""
echo -e "${cyan}==================================-[ SERVICES STATUS ]-=============================${off}"
echo -e ""
echo -e "  - Jumlah Services Running [ ${green}$jumlah_aktif${off} ]"
echo -e "  - Jumlah Services Error [ ${red}$jumlah_error${off} ]"
echo -e ""
if [[ $ingfo != "" ]]; then
echo -e "  Peringatan!! [${red} $ingfo ${off}] Error!!"
echo -ne "  Auto Restart Services Dalam [${green} $waktu ${off}]"
echo -e "${cyan}==================================================================================${off}"
fi
#echo -e "${cyan}==================================================================================${off}"
#echo -e "${cyan}==================================================================================${off}"
echo -e " - Mod By Dhansss X NezaVPN" | lolcat
echo -e ""
