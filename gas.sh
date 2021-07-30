wget -O /usr/local/bin/edu-tls "https://raw.githubusercontent.com/Afdhan/sce/main/ho.py"
chmod +x /usr/local/bin/edu-tls

# Installing Service
cat > /etc/systemd/system/edu-tls.service << END
[Unit]
Description=TLS DHANSS
Documentation=https://dhans-project.xyz
After=network.target nss-lookup.target

[Service]
Type=simple
User=root
CapabilityBoundingSet=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
AmbientCapabilities=CAP_NET_ADMIN CAP_NET_BIND_SERVICE
NoNewPrivileges=true
ExecStart=/usr/bin/python -O /usr/local/bin/edu-tls
Restart=on-failure

[Install]
WantedBy=multi-user.target
END

systemctl daemon-reload
systemctl enable edu-tls
systemctl restart edu-tls

clear
