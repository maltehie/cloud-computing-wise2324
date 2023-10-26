FROM node:20.9.0-slim

WORKDIR /
COPY ./base_app/ /
WORKDIR /base_app
RUN pwd
RUN ls -la

RUN npm install -g @angular/cli
EXPOSE 4200

ENTRYPOINT ["ng", "serve", "--open"]