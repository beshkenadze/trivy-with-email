#!/usr/bin/env sh
(
  echo "From: ${SSMTP_FROM}"
  echo "Subject: ${SSMTP_SUBJECT}"
  echo "Mime-Version: 1.0"
  echo "Content-Type: text/plain; charset='utf-8'"
  echo "${SSMTP_MESSAGE}"
) | ssmtp "${SSMTP_TO}"