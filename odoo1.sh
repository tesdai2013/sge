#!/bin/bash
cd /home/tesdai
mkdir odoo
cd odoo
mkdir src
cd ..
docker run -d -p 8069:8069 --name servidorodoo -v /home/tesdai/odoo/src:/opt/odoo/src debian:buster bash -c "while true;do sleep 10;done"

