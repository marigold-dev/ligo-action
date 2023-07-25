FROM ligolang/ligo:$(LIGO_VERSION)

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
