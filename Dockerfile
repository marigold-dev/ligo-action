FROM ligolang/ligo_ci:0.70.1

COPY entrypoint.sh ./entrypoint.sh

RUN chmod +x ./entrypoint.sh

ENTRYPOINT ["/root/entrypoint.sh"]
