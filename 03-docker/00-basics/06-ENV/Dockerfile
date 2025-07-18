# User an offical image of almalinux
FROM almalinux:latest 

# Add metadata
LABEL maintainer="royal@gmail.com"
LABEL version="v1.0.0"
LABEL description="frontend-component nginx-image"
LABEL description="frontend-component nginx-image"
LABEL github_resource="https://github.com/practice"
# LABEL github_commit="${GIT_COMMIT}"
# LABEL build_date="${BUILD_DATE}"
LABEL environment="stage"
LABEL team="backend"
# those volume will get in jenkins integration
#  2 warnings found (use docker --debug to expand): 
#  - UndefinedVar: Usage of undefined variable '$BUILD_DATE' 
#  - UndefinedVar: Usage of undefined variable '$GIT_COMMIT'

ENV PROJECT = "ecommerce" \
    ENVIRONMENT = "dev"   \
    TEAM = "backend"

EXPOSE 80/tcp
# install nginx
RUN dnf install nginx -y 

# run command at container running time
CMD ["nginx","-g","daemon off;"]



