FROM node:8

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE 3000

CMD [ "npm", "start", "prestart:prod" ]

#docker build -t akliyiping/nest-app .
#docker run -p 3000:3000 -d akliyiping/nest-app
