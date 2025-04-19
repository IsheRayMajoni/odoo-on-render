FROM odoo:16

# Switch to root so we can copy files and set permissions
USER root

# Copy our custom entrypoint script into the image
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Expose Odoo’s default port
EXPOSE 8069

# Use our script as the entrypoint, then run Odoo
ENTRYPOINT ["/entrypoint.sh"]
CMD ["odoo"]
