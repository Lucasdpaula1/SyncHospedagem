FROM node:20-alpine

WORKDIR /app

COPY package*.json ./

# Instalação com suporte a versões legadas no container
RUN npm install --legacy-peer-deps

COPY . .

EXPOSE 3000

# Executa em modo Watch (Hot Reload)
CMD ["npm", "run", "start:dev"]