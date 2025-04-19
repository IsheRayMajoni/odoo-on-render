#!/usr/bin/env bash
set -e

# Write out odoo.conf using the exact DB_* env vars
cat > /etc/odoo/odoo.conf <<EOF
[options]
xmlrpc_interface = 0.0.0.0
db_host        = ${DB_HOST}
db_port        = ${DB_PORT}
db_user        = ${DB_USER}
db_password    = ${DB_PASSWORD}
db_name        = ${DB_NAME}
addons_path    = /usr/lib/python3/dist-packages/odoo/addons
EOF

# Execute the command passed in (CMD ["odoo"])
exec "$@"
