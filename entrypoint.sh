#!/usr/bin/env bash
set -e

# Write out odoo.conf, with a default for DB_PORT
cat > /etc/odoo/odoo.conf <<EOF
[options]
xmlrpc_interface = 0.0.0.0
db_host        = ${DB_HOST}
db_port        = ${DB_PORT:-5432}
db_user        = ${DB_USER}
db_password    = ${DB_PASSWORD}
db_name        = ${DB_NAME}
addons_path    = /usr/lib/python3/dist-packages/odoo/addons
EOF

# Execute the command passed in (e.g. "odoo")
exec "$@"
