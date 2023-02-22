FROM ubuntu
RUN apt-get update -qq
RUN apt-get install -y curl
RUN apt-get install -y nginx

COPY start.sh /
RUN chmod +x /start.sh
CMD [ "/start.sh" ]
EXPOSE 80