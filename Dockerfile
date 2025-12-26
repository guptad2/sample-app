FROM node:18-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install --only=production

COPY src/ ./src/

EXPOSE 3000

CMD ["npm", "start"]
LABEL org.opencontainers.image.source="https://github.com/guptad2/sample-app"
