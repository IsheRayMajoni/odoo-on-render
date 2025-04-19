FROM odoo:16                # official Odoo Community image

USER root
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 8069
ENTRYPOINT ["/entrypoint.sh"]
CMD ["odoo"]
