#Informando que a imagem do Node na versão 14 será a nossa imagem base
FROM node:14
#Definindo o diretório base. (Diretório padrão onde será executados os comando dentro do container)
WORKDIR /app-node
#Copiando todo o conteúdo do diretorio atual (onde está o Dockerfile) para o diretório base (/app-node)
COPY . .
#Definindo o comando que será executado em tempo de execução da imagem
RUN npm install
#Definindo o comando que será executado, ao executar o container gerado por esta imagem
ENTRYPOINT npm start