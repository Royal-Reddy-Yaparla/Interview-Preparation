ARG version
FROM almalinux:${version:-latest}

LABEL environment="stage" \
     team="backend"
   
ARG project="ecommerce_application"
RUN echo "Hello this is ${environment} from ${team} , project ${project}"

CMD ["sleep","1000"]