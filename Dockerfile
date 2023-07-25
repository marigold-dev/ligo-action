FROM ligolang/ligo:0.65.0

COPY . ./

RUN chmod +x ./entrypoint.sh

CMD ["ligo", "$@"]
