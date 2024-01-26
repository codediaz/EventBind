# Utilizar una imagen base ligera de Node.js
FROM node:14-alpine

# Definir el directorio de trabajo en el contenedor
WORKDIR /app

# Copiar los archivos de paquete y instalar las dependencias
COPY package*.json ./
RUN npm install

# Copiar el código fuente de la aplicación en el contenedor
COPY . .

# Exponer el puerto que utiliza la aplicación
EXPOSE 3000

# Comando para iniciar la aplicación con nodemon
CMD ["node", "src/app.js"]