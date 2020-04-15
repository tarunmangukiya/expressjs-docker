FROM node:latest

RUN mkdir -p /var/www
ADD ./ /var/www

WORKDIR /var/www
RUN npm ci

CMD ["node", "/var/www/index.js"]