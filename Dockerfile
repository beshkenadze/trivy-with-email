FROM aquasec/trivy
LABEL maintainer="Aleksandr Beshkenadze beshkenadze@gmail.com"

RUN apk add --update --no-cache ssmtp bash curl
COPY scripts/ /scripts
ENTRYPOINT [ "/scripts/check.sh" ]
