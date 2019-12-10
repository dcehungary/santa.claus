provider "vsphere" {
  user           = "lab7@imdc.demo" #e.g randomuser@vsphere.local
  password       = "Demo2023" #e.g randompassword
  vsphere_server = "vc101.imdc.demo" #e.g vcenter01@corp.local

  # If you have a self-signed cert
  allow_unverified_ssl = true
}
