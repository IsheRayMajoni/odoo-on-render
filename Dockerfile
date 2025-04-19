# Use the official Odoo 16 Community image
FROM odoo:16

# Switch to the root user (the image already defaults to root,
# but stating it explicitly is fine)
USER root

# Copy the custom entry‑point script into the image
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Expose Odoo’s HTTP port
EXPOSE 8069

# Run our script first; it will exec “odoo”
ENTRYPOINT ["/entrypoint.sh"]
CMD ["odoo"]
