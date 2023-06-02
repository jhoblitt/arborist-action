FROM ghcr.io/jhoblitt/arborist:main

COPY entrypoint.sh /bin/entrypoint.sh
RUN chmod a+x /bin/entrypoint.sh

ENTRYPOINT ["/bin/entrypoint.sh"]
