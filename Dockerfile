FROM odoo:16

# Switch to root to copy in our entrypoint script
USER root

# Copy and make executable
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Expose Odoo’s web port
EXPOSE 8069

# Use our script to generate odoo.conf, then run Odoo
ENTRYPOINT ["/entrypoint.sh"]
CMD ["odoo"]
