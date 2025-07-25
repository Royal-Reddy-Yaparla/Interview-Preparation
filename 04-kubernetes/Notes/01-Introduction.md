## Kubernetes Overcomes Docker's Limitations

---

### 1. Auto-Scaling Made Easy

* Kubernetes provides built-in auto-scaling mechanisms:

  * **Horizontal Pod Autoscaler (HPA)**: Automatically scales the number of pods based on CPU, memory, or custom metrics.
  * **Cluster Autoscaler**: Automatically adjusts the number of nodes in the cluster based on demand.
* Scaling behavior can be defined declaratively in YAML manifests.

---

### 2. Built-in Load Balancing

* Kubernetes Services distribute traffic to healthy pods.
* Service types supported:

  * **ClusterIP**: Default service type for internal communication within the cluster.
  * **NodePort**: Exposes the service on each node’s IP at a static port.
  * **LoadBalancer**: Integrates with cloud provider’s load balancer.
  * **Ingress**: Manages HTTP and HTTPS routing with rules and SSL termination.

---

### 3. Decoupled and Persistent Storage

* Kubernetes supports:

  * **Persistent Volumes (PVs)** and **Persistent Volume Claims (PVCs)** to separate storage from pod lifecycle.
* Data persists even if a pod or node fails.
* Integrates with various backend storage systems such as AWS EBS, Azure Disk, NFS, GCE PD, etc.

---

### 4. Advanced Deployment Strategies

* Kubernetes supports:

  * **Rolling Updates**: Gradually replaces old pods with new ones.
  * **Rollbacks**: Easily revert to previous versions in case of failure.
  * **Blue-Green Deployments**: Maintain two environments and switch traffic upon validation.
  * **Canary Deployments**: Gradually roll out changes to a small subset of users.

---

### 5. Simplified and Flexible Networking

* Each pod receives a unique IP.
* Kubernetes enforces a flat network model:

  * Pods can communicate with each other directly across nodes without NAT.
* Network functionality is powered by CNI (Container Network Interface) plugins such as Calico, Flannel, or Cilium.
* **Network Policies** allow fine-grained traffic control between pods and namespaces.

---

Kubernetes fullfil docker disadvantages
-----------------------------------------
1. auto-scaling easy
2. loadbalaing is handle by default
3. storage is outside of cluster 
4. rollingback and multiple deployment strategies possible in kubernetes 
5. network between containers is little easy.