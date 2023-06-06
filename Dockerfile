FROM ghcr.io/jhoblitt/arborist:1

COPY entrypoint.sh /bin/entrypoint.sh
RUN chmod a+x /bin/entrypoint.sh

ENTRYPOINT ["/bin/entrypoint.sh"]
