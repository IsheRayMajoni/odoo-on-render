FROM odoo:16                                            # official CE image  [oai_citation_attribution:9‡GitHub](https://github.com/odoo/docker-official-images?utm_source=chatgpt.com)
USER root
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
EXPOSE 8069
ENTRYPOINT ["/entrypoint.sh"]
CMD ["odoo"]
