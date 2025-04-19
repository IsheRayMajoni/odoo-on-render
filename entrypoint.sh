#!/usr/bin/env bash
set -e

# ----------------- generate odoo.conf -----------------
cat >/etc/odoo/odoo.conf <<EOF
[options]
xmlrpc_interface = 0.0.0.0
db_host          = ${DB_HOST}
db_port          = ${DB_PORT:-5432}
db_user          = ${DB_USER}
db_password      = ${DB_PASSWORD}
db_name          = ${DB_NAME}
db_sslmode       = require            # <<-- TLS for Render Postgres
addons_path      = /usr/lib/python3/dist-packages/odoo/addons
EOF

echo "=== /etc/odoo/odoo.conf ==="
cat /etc/odoo/odoo.conf
echo "==========================="

exec "$@"
