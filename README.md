# GnuPG Docker

[![Published](https://github.com/kapdap/docker-gnupg/actions/workflows/publish.yaml/badge.svg)](https://github.com/kapdap/docker-gnupg/actions/workflows/publish.yaml)
[![GitHub](https://img.shields.io/badge/GitHub-grey)](https://github.com/kapdap/docker-gnupg)
[![Docker Hub](https://img.shields.io/badge/Docker_Hub-blue)](https://hub.docker.com/r/kapdap/gnupg)

This repository contains a Docker image for [GnuPG](https://www.gnupg.org/).

## Quickstart

```dockerfile
FROM kapdap/gnupg AS gnupg

ENV GPG_SIGS="0x22D64065B2E9CB17320CF6FAE62F0D0AA3219070"

RUN gpg-trust

RUN gpg --list-keys
```