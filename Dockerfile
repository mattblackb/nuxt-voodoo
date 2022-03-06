FROM node:10-alpine
WORKDIR /voodoo-docker
COPY package.json ./voodoo-docker
COPY . /voodoo-docker
RUN npm install
EXPOSE 3000

ENV NUXT_HOST=0.0.0.0
ENV NUXT_PORT=3000