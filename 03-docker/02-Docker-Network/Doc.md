### **1. `bridge` network (Default)**

* **Description**:
  Docker creates a private **internal network on the host** (usually called `bridge`), and containers connected to this network can **communicate with each other** using container names.
* **Use case**:
  Best for **standalone containers** or small-scale apps where containers need to talk to each other.
* **Network isolation**:
  Containers are isolated from the host’s network unless ports are **explicitly published** (`-p` flag).

>  Example: `docker run -d -p 8080:80 nginx`
> → Maps container port 80 to host 8080 using bridge network.

---

### **2. `host` network**

* **Description**:
  The container shares the **host’s network stack**. There is **no network isolation** between the container and the host.
* **Use case**:
  Useful when you need **maximum network performance** or need to **avoid port mapping**.
* **Limitations**:
  Only available on **Linux**. Not supported on Docker Desktop for **Windows/Mac**.

> Example: `docker run --network host nginx`
> → Nginx container listens directly on the host's ports.

