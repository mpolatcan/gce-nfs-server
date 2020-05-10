# GCP NFS Server 

NFS Server installation on **Google Cloud Platform** script written with **Terraform HCL**.

## Usage

    terraform init
    terraform apply -var-file=main.tfvars
    
## Configuration 

Configuration file is **main.tfvars**. All configurations are listed below.


| Configuration     | Description                                 | Type |
|:-----------------:|:-------------------------------------------:|:----:|
| credentials_file  | Google Cloud Service Account json file path |string|
| project           | Google Cloud Project id                     |string|