#!/usr/bin/env bash

# This should only be used when you want
# to install an existing TLS certificate
kubectl create secret tls \
  secret-cert-manual-domain-DATESTAMP \
  --namespace=backend \
  --key=domain.key \
  --cert=domain.crt;
