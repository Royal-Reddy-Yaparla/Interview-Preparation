FROM almalinux:latest

RUN dnf install nginx -y 

# remove nginx default page
RUN rm -rf /usr/share/nginx/html/*

# adding file for nginx repo
COPY index.html /usr/share/nginx/html/

RUN adduser ecommerce
# add user to avoid root level access to container
USER ecommerce

CMD ["nginx","-g","daemon off;"]