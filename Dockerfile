FROM ubuntu:14.04

RUN apt-get update
RUN apt-get install -y php5-cli php5-curl php5-mysql

EXPOSE 8080

VOLUME /app
WORKDIR /app

CMD ["php", "-S", "0.0.0.0:8080", "-t", "/app"]
