FROM nginx:1.9

RUN apt-get update -y \
    && apt-get install -y \
        apache2-utils \
    && rm -rf /var/lib/apt/lists/*

#ENV FORWARD_PORT=80

WORKDIR /opt

#RUN apk add --no-cache gettext

COPY nginx.conf auth.htpasswd launch.sh ./

RUN chmod 0755 ./launch.sh

CMD ["./launch.sh"]