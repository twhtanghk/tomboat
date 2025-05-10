FROM node

ADD . /usr/src/app
WORKDIR /usr/src/app

RUN npm install lightningcss --save-dev \
&&  npm install \
&&  npm run build

CMD ["node", "/usr/src/app/.output/server/index.mjs"]
