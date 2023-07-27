FROM esydev/esy:nightly-alpine as esy

FROM alpine:3.18

COPY --from=esy . .

WORKDIR /root

RUN apk add --no-cache curl jq

COPY entrypoint.sh /root/entrypoint.sh

RUN chmod +x /root/entrypoint.sh

ENTRYPOINT ["/root/entrypoint.sh"]
