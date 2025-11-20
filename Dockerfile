# Usamos una imagen de Nginx súper ligera (Alpine Linux)
FROM nginx:alpine

# Copiamos todos los archivos de tu carpeta actual al directorio público de Nginx
# Esto incluye: index.html, camera.html, hacker.html, trivia.html, logo.png, sala.png
COPY . /usr/share/nginx/html

# Exponemos el puerto 80 (interno del contenedor)
EXPOSE 80

# Nginx se inicia automáticamente, no necesitamos CMD