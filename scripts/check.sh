#!/usr/bin/env sh
bash /scripts/setup_ssmtp.bash

DATE=$(date +'%D %R %z')
IFS=
SSMTP_MESSAGE=$(/scripts/trivy.sh)
SSMTP_SUBJECT="The Vulnerability report: ${DATE} for ${DOCKER_IMAGE}"
(
  echo "From: ${SSMTP_FROM}"
  echo "Subject: ${SSMTP_SUBJECT}"
  echo "Mime-Version: 1.0"
  echo "Content-Type: text/plain; charset='utf-8'"
  echo "${SSMTP_MESSAGE}"
) | ssmtp "${SSMTP_TO}"
echo $SSMTP_MESSAGE