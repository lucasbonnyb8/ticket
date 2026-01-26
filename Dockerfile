FROM node:18-bullseye-slim

# precisa de git para dependências via git
RUN apt-get update && apt-get install -y git \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .
RUN npm run build

EXPOSE 8080
CMD ["npm","run","start"]

