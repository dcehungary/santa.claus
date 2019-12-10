variable "datacenter" {
 default        = "IM DEMO"
}

variable "cluster" {
 default        = "FoxiMaxi"
}

variable "datastore" {
 default        = "SVDS2"
}

data "vsphere_datacenter" "dc" {
  name          = "${var.datacenter}"
}

data "vsphere_compute_cluster" "cluster" {
  name          = "${var.cluster}"
  datacenter_id = "${data.vsphere_datacenter.dc.id}" 
} 

data "vsphere_datastore" "datastore" {
  name          = "${var.datastore}" 
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}

data "vsphere_network" "network_site1" {
  name          = "site1"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}

data "vsphere_network" "network_site2" {
  name          = "site2"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}

data "vsphere_virtual_machine" "template" {
  name          = "CENTOS7-TEMPLATE-MINIMAL"
  datacenter_id = "${data.vsphere_datacenter.dc.id}"
}

resource "vsphere_virtual_machine" "vm-1" {
  name             = "k8s-master"
  resource_pool_id = data.vsphere_compute_cluster.cluster.resource_pool_id
  datastore_id     = data.vsphere_datastore.datastore.id

  num_cpus = 2
  memory   = 4096
  guest_id = "rhel7_64Guest"

  network_interface {
    network_id = data.vsphere_network.network_site2.id
  }

  disk {
    label = "disk0"
    size  = 64
  }
  
  clone {
    template_uuid = data.vsphere_virtual_machine.template.id

    customize {
      linux_options{
        host_name = "k8s-master"
        domain = "santa.claus"
      }
      network_interface {
        ipv4_address = "172.17.2.200"
        ipv4_netmask = "24"
      }

      ipv4_gateway = "172.17.2.3"
      dns_suffix_list = ["santa.claus"]
      dns_server_list = ["8.8.8.8"]
    }
  }
}

resource "vsphere_virtual_machine" "vm-2" {
  name             = "k8s-worker-1"
  resource_pool_id = data.vsphere_compute_cluster.cluster.resource_pool_id
  datastore_id     = data.vsphere_datastore.datastore.id

  num_cpus = 2
  memory   = 4096
  guest_id = "rhel7_64Guest"
 
  network_interface {
    network_id = data.vsphere_network.network_site1.id
  }

  disk {
    label = "disk0"
    unit_number = 0
    size  = 64
  }

  clone {
    template_uuid = data.vsphere_virtual_machine.template.id

    customize {
        linux_options{
        host_name = "k8s-worker-1"
        domain = "imdc.local"
      }
      network_interface {
        ipv4_address = "172.17.1.201"
        ipv4_netmask = "24"
      }

      ipv4_gateway = "172.17.1.1"
      dns_suffix_list = ["imdc.demo"]
      dns_server_list = ["8.8.8.8"]
    }
  }
}
resource "vsphere_virtual_machine" "vm-3" {
  name             = "k8s-worker-2"
  resource_pool_id = data.vsphere_compute_cluster.cluster.resource_pool_id
  datastore_id     = data.vsphere_datastore.datastore.id

  num_cpus = 2
  memory   = 4096
  guest_id = "rhel7_64Guest"
 
  network_interface {
    network_id = data.vsphere_network.network_site2.id
  }

  disk {
    label = "disk0"
    unit_number = 0
    size  = 64
  }

  clone {
    template_uuid = data.vsphere_virtual_machine.template.id

    customize {
	linux_options{
        host_name = "k8s-worker-2"
        domain = "santa.claus"
      }
      network_interface {
        ipv4_address = "172.17.2.202"
        ipv4_netmask = "24"
      }

      ipv4_gateway = "172.17.2.3"
      dns_suffix_list = ["santa.claus"]
      dns_server_list = ["8.8.8.8"]
    }
  }
}
