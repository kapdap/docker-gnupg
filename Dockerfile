FROM alpine

ENV GPG_KEYSERVERS="hkp://keyserver.ubuntu.com:80 hkp://p80.pool.sks-keyservers.net:80 hkp://ipv4.pool.sks-keyservers.net hkp://pgp.mit.edu:80"
ENV GPG_SIGS=""

RUN apk --no-cache add curl gnupg

COPY base /

RUN chmod +x entrypoint.sh bin/gpg-*

ENTRYPOINT [ "/entrypoint.sh" ]

CMD [ "--daemon" ]
