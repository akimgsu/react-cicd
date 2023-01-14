FROM node:14.19.0

RUN mkdir -p /app
WORKDIR /app
ADD . /app/

RUN rm yarn.json || true
RUN rm package-lock.json || true
RUN npm install
RUN npm build

ENV HOST 0.0.0.0
EXPOSE 3000

CMD [ "npm", "start"]

