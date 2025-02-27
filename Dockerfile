FROM nginx:latest 
WORKDIR /usr/share/nginx/html 
RUN rm -rf ./\* 
COPY website-files/ /usr/share/nginx/html/ 
COPY default.conf /etc/nginx/conf.d/default.conf 
EXPOSE 80 
CMD ["nginx", "-g", "daemon off;"] 

