#!/bin/bash
chown -R odoo:odoo /opt/odoo
apt update
apt install -y git python3 postgresql nano virtualenv wget build-essential python3-dev python3-pip libxslt-dev libssl-dev libldap2-dev libzip-dev libsasl2-dev
cd /tmp
wget https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.5/wkhtmltox_0.12.5-1.buster_amd64.deb -O wkhtmltox_0.12.5-1.buster_amd64.deb
apt install -y /tmp/wkhtmltox_0.12.5-1.buster_amd64.deb
service postgresql start
su - postgres -c "createuser --createdb odoo"
su -c "psql -c \"alter role odoo with password 'Tesdai66'\"" postgres
wget https://raw.githubusercontent.com/OCA/OCB/13.0/requirements.txt -O /tmp/requirements.txt
pip3 install -r /tmp/requirements.txt