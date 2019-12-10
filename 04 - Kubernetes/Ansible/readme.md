Based on the following github project:
https://github.com/ctienshi/kubernetes-ansible/tree/master/centos

Customized for our demo network on vCenter, added nfs-utils as prerequisite for the nfs-client-provisioner helm chart needed for dynamic persistent volume provisioning, and downloading and installing the latest version of helm on the master node.
