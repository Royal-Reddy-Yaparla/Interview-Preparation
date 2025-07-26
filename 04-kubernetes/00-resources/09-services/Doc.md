n Kubernetes, a Service is used to expose pods either internally (ClusterIP) or externally (NodePort or LoadBalancer).
ClusterIP is the default and is used for internal-only access.
NodePort exposes the service on each node’s IP at a static port.
LoadBalancer provisions a cloud load balancer (like AWS Classic ELB) and internally uses both ClusterIP and NodePort, making them subcomponents of the LoadBalancer type.