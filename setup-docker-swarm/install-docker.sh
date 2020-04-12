###
# Basic script to insall docker on Centos7/RHEL7 OS

# TODO:
      # Error Handling for commands
      # Enable user friendly error messages
###


# update packages
sudo yum update -y

# uninstall older-versions if any
sudo yum remove -y docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-engine

# install utils
sudo yum install -y yum-utils device-mapper-persistent-data lvm2


# add docker repo
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo

# install docker ce
sudo yum -y install docker-ce

# start docker service and enable the service
sudo systemctl start docker && sudo systemctl enable docker

# add cloud_user/user to docker group
sudo usermod -aG docker cloud_user

# test docker version
docker --version
