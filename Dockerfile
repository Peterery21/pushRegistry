FROM nginx:latest
RUN sed -i 's/nginx/peter/g' 'usr/share/nginx/html/index.html'
EXPOSE 80
