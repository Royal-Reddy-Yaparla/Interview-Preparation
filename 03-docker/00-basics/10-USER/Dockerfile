FROM almalinux:latest

RUN dnf install nginx -y 

RUN adduser ecommerce
# add user to avoid root level access to container
USER ecommerce

CMD ["nginx","-g","daemon off;"]