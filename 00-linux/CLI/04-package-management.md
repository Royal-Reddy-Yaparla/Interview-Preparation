package-manager
--
download and install packages
based on linux flavor , package managers will be different

ubuntu - apt / apt-get 

**install**

`sudo apt-get install nginx` 

what happened behind when we use install command

User runs: apt install <pkg>
        →
APT checks sources.list & sources.list.d
        →
Is package available in repo?
        →
YES → Resolve dependencies → Download .deb files → Verify GPG signatures → Install with dpkg → Run post-install scripts → ✅ Package installed

NO  → Add vendor repo (PPA/custom) → OR Download .deb manually → OR Use Snap/Flatpak → OR Build from source → OR Run inside Docker

example jenkins install 

`sudo wget -O /etc/apt/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
`

`echo "deb [signed-by=/etc/apt/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null`


**installing**

`sudo apt-get install nginx` 

**updating**

`sudo apt-get update`

**remove**

`sudo apt-get remove nginx` 

