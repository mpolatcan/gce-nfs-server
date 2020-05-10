# GCE NFS Server 

NFS Server installation on **Google Compute Engine** script written with **Terraform HCL**.

## Usage

Example **main.tfvars** file below:

```hcl
credentials_file = "your_credentials.json"
project = "example-project"

# ------------------------- NFS SETTINGS -------------------------
nfs_server_machine_region = "us-central1"
nfs_server_machine_zone = "a"
nfs_server_machine_name = "test"
nfs_server_machine_vcpus = 2
nfs_server_machine_memory_in_mb = 4096
nfs_server_boot_disk_image = "ubuntu_1604"
nfs_server_boot_disk_size = 50
nfs_server_boot_disk_type = "hdd"
nfs_server_network = "default"
nfs_server_sa_scopes = []
nfs_server_fileshare_name = "test"
# -----------------------------------------------------------------
```
    
    terraform init
    terraform apply -var-file=main.tfvars
    
## Configuration 

Configuration file is **main.tfvars**. All configurations are listed below.


| Configuration     | Description                                 | Type   | Default Value |
|:------------------|:--------------------------------------------|:------|:-------------|
| credentials_file  | Google Cloud Service Account json file path | string | - |
| project           | Google Cloud Project id                     | string | - |
| nfs_server_machine_region | Google Compute Engine instance region | string | us-central1 |
| nfs_server_machine_zone | Google Compute Engine instance zone for specified region | string | a |
| nfs_server_machine_name | Google Compute Engine instance name | string | - |
| nfs_server_machine_vcpus | Google Compute Engine instance vCPU count | int | 2 |
| nfs_server_machine_memory_in_mb | Google Compute Engine instance memory in MBs | int | 4096 |
| nfs_server_boot_disk_image | Google Compute Engine instance boot disk image | string | ubuntu_1604 |
| nfs_server_boot_disk_size | Google Compute Engine instance boot disk size in GB | int | 50 |
| nfs_server_boot_disk_size | Google Compute Engine instance boot disk type | string | hdd |
| nfs_server_network | Google Compute Engine instance network | string | default |
| nfs_server_sa_scopes | Google Compute Engine instance service account scopes | list | [] |
| nfs_server_fileshare_name | NFS Server fileshare directory name | string | - | 

### GCP VM Images

| Image Id | GCP Equivalent |
|:-----|:----------------|
| debian_9 | debian-cloud/debian-9 |
| debian_10 | debian-cloud/debian-10 |
| ubuntu_1604 | ubuntu-os-cloud/ubuntu-1604-lts |
| ubuntu_1604_minimal | ubuntu-os-cloud/ubuntu-minimal-1604-lts |
| ubuntu_1804 | ubuntu-os-cloud/ubuntu-1804-lts |
| ubuntu_1804_minimal | ubuntu-os-cloud/ubuntu-minimal-1804-lts |
| ubuntu_1904 | ubuntu-os-cloud/ubuntu-1904 |
| ubuntu_1904_minimal | ubuntu-os-cloud/ubuntu-minimal-1904 |
| ubuntu_1910 | ubuntu-os-cloud/ubuntu-1910 |
| ubuntu_1910_minimal | ubuntu-os-cloud/ubuntu-minimal-1910 |

### GCP Default Network CIDRs

| Region | CIDR |
|:-------|:----|
| us-central1 | 10.128.0.0/20 |
| europe-west1 | 10.132.0.0/20 |
| us-west1 | 10.138.0.0/20 |
| asia-east1 | 10.140.0.0/20 |
| us-east1 | 10.142.0.0/20 |
| asia-northeast1 | 10.146.0.0/20 |
| asia-southeast1 | 10.148.0.0/20 |
| us-east4 | 10.150.0.0/20 |
| australia-southeast1 | 10.152.0.0/20 |
| europe-west2 | 10.154.0.0/20 |
| europe-west3 | 10.156.0.0/20 |

### GCP GCE Disk Types

| Disk Type Id | GCP Equivalent |
|:----|:--------------|
| ssd | pd-ssd |
| hdd | pd-standard |

### GCP Oauth Scopes

| Oauth Scope Id | GCP Equivalent |
|:---------------|:--------------|
| monitoring | https://www.googleapis.com/auth/monitoring |
| monitoring.read | https://www.googleapis.com/auth/monitoring.read |
| monitoring.write | https://www.googleapis.com/auth/monitoring.write |
| logging.admin | https://www.googleapis.com/auth/logging.admin |
| logging.read | https://www.googleapis.com/auth/logging.read |
| logging.write | https://www.googleapis.com/auth/logging.write |
| cloud-platform | https://www.googleapis.com/auth/cloud-platform |
| cloud-platform.readonly | https://www.googleapis.com/auth/cloud-platform.read-only |
| compute | https://www.googleapis.com/auth/compute |
| compute.read_only | https://www.googleapis.com/auth/compute.readonly |
| devstorage.full_control | https://www.googleapis.com/auth/devstorage.full_control |
| devstorage.read_only | https://www.googleapis.com/auth/devstorage.read_only |
| devstorage.read_write | https://www.googleapis.com/auth/devstorage.read_write |
| service.management | https://www.googleapis.com/auth/service.management |
| service.management.readonly | https://www.googleapis.com/auth/service.management.readonly |