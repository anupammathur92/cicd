FROM node:18.18.0
WORKDIR /var/www/
COPY index.js package.json ./
RUN npm install -g npm && npm i
EXPOSE 3000
CMD ["npm","run","dev"]