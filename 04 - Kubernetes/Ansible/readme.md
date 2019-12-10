Based on the following github project:
https://github.com/ctienshi/kubernetes-ansible/tree/master/centos

================================================================================

Az Ansible playbook yaml fájlok a fenti github project alapján lettek létrehozva
és tartalmazza a szükséges módosításokat a hálózati beállítások vCenter hálózati környezetéhez illesztéséhez, a flannel pod-network beállításokat, az nfs-utils csomag telepítését a nodeokra, ami előfeltétel az nfs-client-provisioner helm chart számára ami a dinamikus perzisztens kötet előkészítés számára szükséges, valamint
letölti és telepíti a helm az írás időpontjában legfrissebb stabil verzióját a
kubernetes master nodera.

================================================================================

Customized for our demo network on vCenter, added nfs-utils as prerequisite for the nfs-client-provisioner helm chart needed for dynamic persistent volume provisioning, and downloading and installing the latest version of helm on the master node.
