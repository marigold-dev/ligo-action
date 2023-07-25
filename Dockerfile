FROM ligolang/ligo:0.65.0

COPY . ./

CMD ["ligo", "$@"]
