### **Disadvantages of Docker (Standalone Mode)**

---

### **1. No Built-in Auto-Scaling**

* Docker alone **doesn't support auto-scaling** based on CPU/memory or load.
* You'll need external tools (like **Kubernetes**, **Docker Swarm**, or **custom scripts**) for auto-scaling.

---

### **2. No Native Load Balancer**

* Docker doesn't include a **native load-balancer** to distribute traffic between containers.
* You must use external tools like **HAProxy**, **NGINX**, or orchestration platforms (**Kubernetes Services**, **Ingress**).

---

### **3. No Self-Healing**

* If a container **crashes**, Docker won't restart it **unless you explicitly configure it**.
* Solution: use `--restart unless-stopped` or orchestration tools (e.g., Kubernetes, which has liveness/readiness probes and automatic restarts).

---

### **4. Docker Host Failure Risks**

If the **host machine goes down**, Docker provides no default recovery:

*  **Running containers are lost**
*  **Volumes stored on host might be lost** (unless backed by persistent storage or Docker volumes stored on EBS/NFS etc.)
*  **No high availability** setup is present by default

---

###  **5. Bridge Network is Local to a Host**

* The default `bridge` network allows communication **only within a single host**.
* You **can’t connect containers across different Docker hosts** using `bridge`.
* Solution: use **Docker Swarm overlay networks** or **Kubernetes CNI plugins** for multi-host networking.

---

### **6. Security Concerns**

* Containers **share the same kernel** as the host → security boundary is **weaker than virtual machines**.
* Requires strict control on:

  * Image sources
  * Capabilities
  * Host mounts

### kubernetes PaaS