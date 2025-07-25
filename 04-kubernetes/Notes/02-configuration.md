eksctl: it is sa tool to configure AWS EKS clusters

kubectl: it is a tool to interact with tool

work-station: it is an instance 
- docker install 
- aws configure provide credentials
- install eksctl create cluster
- install kubectl to interact with cluster\

- eksctl install
    ```
        # for ARM systems, set ARCH to: `arm64`, `armv6` or `armv7`
        ARCH=amd64
        PLATFORM=$(uname -s)_$ARCH

        curl -sLO "https://github.com/eksctl-io/eksctl/releases/latest/download/eksctl_$PLATFORM.tar.gz"

        # (Optional) Verify checksum
        curl -sL "https://github.com/eksctl-io/eksctl/releases/latest/download/eksctl_checksums.txt" | grep $PLATFORM | sha256sum --check

        tar -xzf eksctl_$PLATFORM.tar.gz -C /tmp && rm eksctl_$PLATFORM.tar.gz

        sudo install -m 0755 /tmp/eksctl /usr/local/bin && rm /tmp/eksctl

        eksctl version

    ```
    source: https://eksctl.io/installation/

- kubectl install
    ```
        curl -O https://s3.us-west-2.amazonaws.com/amazon-eks/1.33.0/2025-05-01/bin/linux/arm64/kubectl

        chmod +x ./kubectl
        
        mkdir -p $HOME/bin && cp ./kubectl $HOME/bin/kubectl && export PATH=$HOME/bin:$PATH

        # to get every user get access 
        sudo mv kubectl /usr/local/bin/kubectl

        kubectl version

    ```
    source: https://docs.aws.amazon.com/eks/latest/userguide/install-kubectl.html#linux_arm64_kubectl

