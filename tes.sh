#!/bin/bash
# Proxy For Edukasi & Imclass
# ==============================

# Getting Proxy Template
wget -q -O /usr/local/bin/edu-vpn "https://raw.githubusercontent.com/Afdhan/esesha/main/edu.py"
chmod +x /usr/local/bin/edu-vpn

# Installing Service
cat > /etc/systemd/system/edu-vpn.service << END
[Unit]
Description=Python Proxy 
Documentation=https://dhans-project.xyz
After=network.target nss-lookup.target
[Service]
Type=simple
User=root
CapabilityBoundingSet=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
AmbientCapabilities=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
NoNewPrivileges=true
ExecStart=/usr/bin/python -O /usr/local/bin/edu-vpn 2095
Restart=on-failure
[Install]
WantedBy=multi-user.target
END

systemctl daemon-reload
systemctl enable edu-vpn
systemctl restart edu-vpn
