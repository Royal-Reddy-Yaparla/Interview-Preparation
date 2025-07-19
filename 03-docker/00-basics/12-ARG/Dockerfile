ARG version
FROM almalinux:${version:-latest}

ENV ENVIRONMENT = "stage" \
     TEAM = "backend"
   
ARG project="ecommerce_application"
RUN echo "Hello this is ${ENVIRONMENT} from ${TEAM} , project ${project}"

CMD ["sleep","1000"]