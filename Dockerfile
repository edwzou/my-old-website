
### STAGE 1: Build Angular Env ###
FROM node:16.14.2-alpine AS builder
WORKDIR /app
COPY package*.json ./
RUN npm install -g npm@9.2.0
RUN npm install -g @angular/cli && npm install
COPY . .
RUN ng build

### STAGE 2: Run nginx web server ##
FROM nginx:1.17.10-alpine
EXPOSE 4200
RUN rm -rf /usr/share/nginx/html/*
COPY --from=builder /app/dist/* /usr/share/nginx/html
