FROM ubuntu
RUN apt-get update -qq \
 && apt-get install -y \
   curl \
   nginx

COPY start.sh /
RUN chmod +x /start.sh
CMD [ "/start.sh" ]
EXPOSE 80