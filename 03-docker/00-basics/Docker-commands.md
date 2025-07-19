- build an image
```
    docker build -t <name>:tag .

```
Note: execute command where Dockerfile is present.

- inspect image/container

```
    docker inspect <image_id>/<container_id>

```

remove rmi 

```
docker rm <image_id>

```

---
### container-commands

- to run the container from images
```
    docker run -d -p 80:80 --name=nginx cmd:v1

```

- to know containers status - only running
```
    docker ps
```

- to know containers status - all
```
    docker ps -a
```

- stop container

```
docker stop <container_id>

```

- start container

```
docker start <container_id>

```

remove container 

```
docker rm <container_id>

```

interact with container
```
docker exec -it ea760ff43733 bash

```

```
docker ps -a --no-trunc --progress=plain
```

```
docker build -t arg:v1 --no-trunc --progress=plain --build-arg version=9 .
```