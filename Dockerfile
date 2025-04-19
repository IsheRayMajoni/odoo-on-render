FROM odoo:16

USER root

# Copy in our custom entrypoint
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 8069

ENTRYPOINT ["/entrypoint.sh"]
CMD ["odoo"]
