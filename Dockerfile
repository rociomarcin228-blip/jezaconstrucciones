FROM nginx:alpine

# Copia los archivos del sitio a la ruta por defecto de Nginx
COPY . /usr/share/nginx/html

# Asegura los permisos de lectura de los archivos
RUN chmod -R 755 /usr/share/nginx/html

# Expone el puerto 80
EXPOSE 80

# Inicia Nginx en primer plano
CMD ["nginx", "-g", "daemon off;"]
