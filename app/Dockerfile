FROM node:6

RUN mkdir /src

RUN npm install nodemon -g

WORKDIR /src

ADD src/package.json /src/package.json

RUN npm install -g

ADD src/nodemon.json /src/nodemon.json

EXPOSE 4206

CMD npm start