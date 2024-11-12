FROM alpine

RUN apk --no-cache add curl gnupg

COPY base /

RUN chmod +x *.sh bin/gpg-*

ENV GPG_KEYSERVERS="hkps://keyserver.ubuntu.com hkps://keys.openpgp.org hkps://keys.mailvelope.com"
ENV GPG_SIGS=""

ENTRYPOINT [ "/entrypoint.sh" ]

CMD [ "--help" ]
