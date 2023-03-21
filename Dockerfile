FROM node:16-alpine
WORKDIR /app
COPY package*.json ./
RUN yarn install --only=production
COPY . .
RUN yarn run build

EXPOSE 3000

CMD ["yarn", "start"]
