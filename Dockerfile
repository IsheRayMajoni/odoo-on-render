# Use the official Odoo 16 Community image
FROM odoo:16

USER root   # needed to copy files

# Copy in the custom entry‑point script and make it executable
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Odoo’s web interface listens on 8069
EXPOSE 8069

# Run our script first; it will exec "odoo" with the right DB flags
ENTRYPOINT ["/entrypoint.sh"]
CMD ["odoo"]
