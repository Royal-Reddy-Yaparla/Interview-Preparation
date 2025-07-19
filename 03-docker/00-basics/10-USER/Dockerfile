FROM almalinux:latest

RUN adduser ecommerce
# add user to avoid root level access to container
USER ecommerce

RUN dnf install nginx -y 

CMD ["nginx","-g","daemon off;"]