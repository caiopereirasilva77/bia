FROM node:18-slim

RUN npm install -g npm@latest --loglevel=error
WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install --loglevel=error

COPY . .

RUN REACT_APP_API_URL=Bia-env.eba-gkuptim5.us-east-1.elasticbeanstalk.com SKIP_PREFLIGHT_CHECK=true npm run build --prefix client

RUN mv client/build build

RUN rm  -rf client/*

RUN mv build client/

EXPOSE 8080

CMD [ "npm", "start" ]
