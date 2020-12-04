#!/bin/bash
service postgresql start
su -c "python3 /opt/odoo/src/OCB/odoo-bin --addons-path=/opt/odoo/src/OCB/addons --db_host=localhost -r odoo -w Tesdai66" odoo