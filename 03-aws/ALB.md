
## Application-Load balancer

Note: any application requires
    - highly availablity 
    - scalability


ALB:
- Application Laod balancer receives incomming traffic and routes it to listers.
- it is an entry point to that distribute the incomming 
HTTP/HTTPS traffic to registered targets(EC2/ECS).


Listeners:
- it listens on a ports (80/443) and checks for requests
- each Listener has rules defined to decide how to route traffic.

Rules:
- rules are used by listeners to determine what to do with request (forward to specific target groups based on URL path or hostname)

Target Groups:
- which is group of registered targets(instances/IPs) , to handle the requests.

- One listener rule can forward requests to one or multiple target groups.

Health Checks:
Each target group has a health check configuration to regularly verify if the targets are healthy.

we can define:
- Path to check (e.g., /health)
- Interval between health checks (e.g., every 30 seconds)
- Timeout, unhealthy threshold, healthy threshold
- Only healthy targets receive traffic.

----
How a Client Request Flows through an AWS Application Load Balancer (ALB)

- Client sends a request (e.g., browser hitting a domain like example.com).

- The request hits the Application Load Balancer (ALB).

- The ALB Listener (listening on a port like 80 or 443):

    - Detects the request based on protocol + port.

    - Applies listener rules to decide what to do next.

- Listener Rule checks:

    - Path-based or host-based conditions (e.g., /api, app.example.com).

    - If matched, forwards the request to the defined Target Group.

- Target Group:

    - Contains EC2 instances, ECS tasks, or IP addresses.

    - ALB performs health checks on each target.

- If a target is healthy, the ALB forwards the request to it.

- The target processes the request and sends a response.

- The ALB passes the response back to the client.


