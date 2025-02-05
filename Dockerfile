# Usar uma imagem base Node.js oficial com Alpine para minimizar o tamanho!
FROM node:20-alpine

# Definir o diretório de trabalho dentro do container
WORKDIR /

# Copiar apenas os arquivos necessários para instalar as dependências
#COPY package*.json ./

# Instalar as dependências da aplicação
RUN npm run build

# Copiar o restante do código da aplicação para o container
COPY . .

# Expor a porta que a aplicação usa (por exemplo, 3000)
EXPOSE 3000

# Comando para iniciar a aplicação
CMD ["npm", "start"]
