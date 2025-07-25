## **Docker Architecture Overview**

Docker is built on **client-server architecture**, mainly consisting of:

### 1. **Docker Client (`docker`)**

* Interface through which users interact with Docker.
* Sends commands like `docker build`, `docker run`, etc., to the Docker Daemon using REST API.
* Can run on the same host or remotely.

### 2. **Docker Host**

* Runs the **Docker Daemon (`dockerd`)**, which does the heavy lifting.
* Responsible for:

  * Building images
  * Running containers
  * Managing networks, volumes, and more

**Includes:**

* **Docker Engine**

  * Docker Daemon (`dockerd`)
  * Docker CLI
  * REST API server

### 3. **Docker Registry**

* Stores Docker images.
* Can be:

  * **Public:** Docker Hub, GitHub Container Registry
  * **Private:** Self-hosted registries, Amazon ECR, Google GCR

---

##  **Typical Docker Flow: Example with NGINX**

```text
User ---> Docker CLI ---> Docker Daemon ---> Registry (DockerHub) 
                                  |                    |
                                  |                    v
                               Pull Image  <----- Not Found Locally
                                  |
                                  v
                         Run Container (nginx)
                                  |
                                  v
                          Output to User (Browser)
```

### Step-by-step (Use Case: `nginx`)

1. You run: `docker run nginx`
2. Docker Daemon checks if `nginx` image exists locally

   *  If yes → runs container directly
   *  If no → pulls image from DockerHub
3.  After pull, it **creates and runs a container**
4.  You can also configure:

   * **Volumes** → for persistent data
   * **Networks** → for container-to-container communication

---

##  Additional Concepts

###  **Volumes**

* Persist data beyond the container lifecycle.
* Example: `docker run -v /data nginx`

###  **Networking**

* Bridge (default), Host, None, Custom
* Allows containers to talk to each other or expose to the host.

---

## Summary (Your Words Polished)

> Docker has two primary functions:
>
> * Build Docker images
> * Run and manage containers based on those images
>
> **Components:**
>
> * **Docker Client**: CLI that users interact with.
> * **Docker Host**: Runs Docker Daemon which builds and runs containers.
> * **Docker Registry**: Stores images (local or central like DockerHub).
>
> **Workflow Example (nginx):**
>
> 1. Checks if the image exists locally.
> 2. If not, pulls from DockerHub.
> 3. Runs the container and sends output to the client.
> 4. Volumes and networks can be configured during container creation.

