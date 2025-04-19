FROM odoo:16            # official Odoo Community image

USER root               # ensure we can copy files
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 8069             # Odoo web port

ENTRYPOINT ["/entrypoint.sh"]
CMD ["odoo"]
