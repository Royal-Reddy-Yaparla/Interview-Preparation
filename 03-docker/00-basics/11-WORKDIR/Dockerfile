FROM almalinux:latest

# create directory for application 
RUN mkdir /tmp/ecommerce_application

# check present directory
RUN pwd 

# move to ecommerce_application repo 
WORKDIR /tmp/ecommerce_application

# check present directory
RUN pwd
RUN echo "Hello I am in work dir" > hello.txt
# maintain container in active time of check 
CMD ["sleep","1000"]