FROM node:20-bullseye-slim

RUN apt-get update && apt-get install -y git \
  && rm -rf /var/lib/apt/lists/*

WORKDIR /app

# instala deps
COPY package*.json ./
RUN npm install

# copia código
COPY . .

# builda
RUN npm run build

EXPOSE 8080

CMD ["npm", "run", "start"]
