#!/usr/bin/env bash
set -e

# ----  Generate odoo.conf from environment variables  ----
cat >/etc/odoo/odoo.conf <<EOF
[options]
xmlrpc_interface = 0.0.0.0
db_host          = ${DB_HOST}
db_port          = ${DB_PORT:-5432}
db_user          = ${DB_USER}
db_password      = ${DB_PASSWORD}
db_name          = ${DB_NAME}
addons_path      = /usr/lib/python3/dist-packages/odoo/addons
EOF

echo "Generated /etc/odoo/odoo.conf:"
cat /etc/odoo/odoo.conf

# ----  Hand off to the official Odoo entrypoint  ----
exec "$@"
