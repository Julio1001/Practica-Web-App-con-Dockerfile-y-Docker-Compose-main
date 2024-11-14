# Usa una imagen de Node.js para ejecutar una aplicación web simple
FROM node:14

# Establece el directorio de trabajo en el contenedor
WORKDIR /usr/src/app

# Copia los archivos de la aplicación desde el directorio actual al contenedor
COPY . .

# Instala las dependencias necesarias
RUN npm install

# Expone el puerto 3000 para la aplicación
EXPOSE 3000

# Comando para ejecutar la aplicación
CMD ["node", "index.js"]
