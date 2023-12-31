FROM node:20.9.0-slim

WORKDIR /
COPY ./base_app/ /base_app
WORKDIR /base_app

RUN npm install -g @angular/cli && npm install --save-dev @angular-devkit/build-angular && npm i
EXPOSE 4200

ENTRYPOINT ["ng", "serve", "--open" , "--host", "0.0.0.0"]