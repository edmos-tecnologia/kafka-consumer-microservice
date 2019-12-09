FROM node:11.8-alpine

ENV TOPICO=meu-topico
ENV HOST=0.0.0.0
ENV PORTA=9092
ENV SLACK=http://webhook.site/986b6e3d-96de-4968-a9d8-46df6ea85d74
ENV CANAL=lab-consumidor
#exemplo: ENV CANAL=lab-testes

WORKDIR /usr/src/app
COPY package*.json ./
RUN npm install
COPY . .

CMD [ "npm", "start" ]
