Based on the following github project:
https://github.com/ctienshi/kubernetes-ansible/tree/master/centos

================================================================================

Az Ansible playbook yaml fájlokat a fenti github project alapján hoztam létre, a
szükséges módosításokat a prezentáció számára:
Hálózati beállítások, pod-network beállítása Flannel networkre.
nfs-utils csomag telepítése a nodeokra, ami előfeltétel az nfs-client-provisioner helm chart számára ami a dinamikus perzisztens kötet előkészítés számára szükséges.

Customized for our demo network on vCenter, added nfs-utils as prerequisite for the nfs-client-provisioner helm chart needed for dynamic persistent volume provisioning, and downloading and installing the latest version of helm on the master node.
