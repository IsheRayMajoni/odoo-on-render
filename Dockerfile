# Official Odoo 16 Community image
FROM odoo:16

USER root
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

EXPOSE 8069
ENTRYPOINT ["/entrypoint.sh"]
CMD ["odoo"]
