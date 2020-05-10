locals {
  machine_type_fmt = "custom-%d-%d"
  zone_fmt = "%s-%s"
  nfs_script_file = "nfs.sh"
  placeholder_fileshare_name = "fileshare_name"
  placeholder_network = "network"

  gcp_default_network_cidrs={
    us-central1 = "10.128.0.0/20"
    europe-west1 = "10.132.0.0/20"
    us-west1 = "10.138.0.0/20"
    asia-east1 = "10.140.0.0/20"
    us-east1 = "10.142.0.0/20"
    asia-northeast1 = "10.146.0.0/20"
    asia-southeast1 = "10.148.0.0/20"
    us-east4 = "10.150.0.0/20"
    australia-southeast1 = "10.152.0.0/20"
    europe-west2 = "10.154.0.0/20"
    europe-west3 = "10.156.0.0/20"
  }

  gcp_vm_images={
    debian_9 = "debian-cloud/debian-9"
    debian_10 = "debian-cloud/debian-10"
    ubuntu_1604 = "ubuntu-os-cloud/ubuntu-1604-lts"
    ubuntu_1604_minimal = "ubuntu-os-cloud/ubuntu-minimal-1604-lts"
    ubuntu_1804 = "ubuntu-os-cloud/ubuntu-1804-lts"
    ubuntu_1804_minimal = "ubuntu-os-cloud/ubuntu-minimal-1804-lts"
    ubuntu_1904 = "ubuntu-os-cloud/ubuntu-1904"
    ubuntu_1904_minimal = "ubuntu-os-cloud/ubuntu-minimal-1904"
    ubuntu_1910 = "ubuntu-os-cloud/ubuntu-1910"
    ubuntu_1910_minimal = "ubuntu-os-cloud/ubuntu-minimal-1910"
  }

  gcp_gce_disk_types={
    ssd = "pd-ssd"
    hdd = "pd-standard"
  }

  gcp_oauth_scopes={
    "monitoring" = "https://www.googleapis.com/auth/monitoring"
    "monitoring.read" = "https://www.googleapis.com/auth/monitoring.read"
    "monitoring.write" = "https://www.googleapis.com/auth/monitoring.write"
    "logging.admin" = "https://www.googleapis.com/auth/logging.admin"
    "logging.read" = "https://www.googleapis.com/auth/logging.read"
    "logging.write" = "https://www.googleapis.com/auth/logging.write"
    "cloud-platform" = "https://www.googleapis.com/auth/cloud-platform"
    "cloud-platform.readonly"= "https://www.googleapis.com/auth/cloud-platform.read-only"
    "compute" = "https://www.googleapis.com/auth/compute"
    "compute.read_only" = "https://www.googleapis.com/auth/compute.readonly"
    "devstorage.full_control" = "https://www.googleapis.com/auth/devstorage.full_control"
    "devstorage.read_only" = "https://www.googleapis.com/auth/devstorage.read_only"
    "devstorage.read_write" = "https://www.googleapis.com/auth/devstorage.read_write"
    "service.management" = "https://www.googleapis.com/auth/service.management"
    "service.management.readonly" = "https://www.googleapis.com/auth/service.management.readonly"
  }
}

variable "credentials_file" {type = string}
variable "project" {type = string}
variable "nfs_server_machine_name" {type = string}
variable "nfs_server_machine_region" {
  type = string
  default = "us-central1"
}
variable "nfs_server_machine_zone" {
  type = string
  default = "a"
}
variable "nfs_server_machine_vcpus" {
  type = number
  default = 2
}
variable "nfs_server_machine_memory_in_mb" {
  type = number
  default = 4096
}
variable "nfs_server_boot_disk_image" {
  type = string
  default = "ubuntu_1804"
}
variable "nfs_server_boot_disk_size" {
  type = number
  default = 100
}
variable "nfs_server_boot_disk_type" {
  type = string
  default = "hdd"
}
variable "nfs_server_network" {
  type = string
  default = "default"
}
variable "nfs_server_network_cidr" {
  type = string
  default = null
}
variable "nfs_server_sa_scopes" {
  type = list(string)
  default = []
}
variable "nfs_server_fileshare_name" {type = string}