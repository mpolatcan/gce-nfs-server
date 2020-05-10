# GCE NFS Server 

NFS Server installation on **Google Compute Engine** script written with **Terraform HCL**.

## Usage

    terraform init
    terraform apply -var-file=main.tfvars
    
## Configuration 

Configuration file is **main.tfvars**. All configurations are listed below.


| Configuration     | Description                                 | Type   | Default Value |
|:------------------|:--------------------------------------------|:------:|:-------------:|
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

### Boot Disk Images

