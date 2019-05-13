Docker image default configurations for NFS server
================================

### Run Instructions

Install NFS server on the host machine:

    sudo apt-get install nfs-kernel-server

Stop host services from being run

    sudo systemctl stop nfs-server
    sudo systemctl stop rpcbind
    sudo systemctl stop rpcbind.socket

Disable NFS services from being started on boot:

    sudo systemctl disable nfs-server
    sudo systemctl disable rpcbind
    sudo systemctl disable rpcbind.socket

Load driver at boot by appending driver "nfsd" to the file /etc/modules

    sudo bash -c "echo "nfsd" >> /etc/modules"

Run image

    docker-compose up -d
