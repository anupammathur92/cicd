FROM node:18.18.0
ARG DATABASE_URL
ENV DATABASE_URL=$DATABASE_URL
EXPOSE 3000
WORKDIR /var/www/
COPY ./src /var/www/src
COPY server.js package.json ./
RUN npm install -g npm && npm i
RUN cd /var/www/src && npx prisma migrate dev --name init
CMD ["npm","run","dev"]