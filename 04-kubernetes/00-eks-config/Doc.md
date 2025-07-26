```
terraform init
terraform plan 
terraform apply -auto-approve
```

sudo growpart /dev/nvme0n1 4,
sudo vgdisplay RootVG,
sudo lvextend -L +10G /dev/RootVG/varVol,
sudo xfs_growfs /var

# create cluster
eksctl create cluster --config-file=<file>

# delete cluster
eksctl delete cluster --config-file=<file>