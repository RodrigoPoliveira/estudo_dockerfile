#Informando que a imagem do Node na versão 14 será a nossa imagem base
FROM node:14
#Definindo o diretório base. (Diretório padrão onde será executados os comando dentro do container)
WORKDIR /app-node
#ARG é usado para criar uma variável em tempo de build da imagem
ARG PORT_BUILD=6000
#ENV é utilizado para criar variável de ambiente para dentro do container
ENV PORT=$PORT_BUILD
#Informando que a aplicação está exposta na porta X
EXPOSE $PORT_BUILD
#Copiando todo o conteúdo do diretorio atual (onde está o Dockerfile) para o diretório base (/app-node)
COPY . .
#Definindo o comando que será executado em tempo de execução da imagem
RUN npm install
#Definindo o comando que será executado, ao executar o container gerado por esta imagem
ENTRYPOINT npm start