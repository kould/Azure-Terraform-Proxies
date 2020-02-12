variable "region" {}
variable AZURE_INSTANCE_PASSWORD { default = "Milo2012!" }
variable AZURE_INSTANCES_COUNT { default = 10 }
variable "AZURE_INSTANCE_USER_NAME" { default = "ubuntu" }
variable "AZURE_DEFAULT_REGION" { default = ["eastus"] }
variable "AZURE_VM_SIZE" { default = "Standard_B1ls" }
variable "PROXY_TYPE" { default = "socks" }
variable "PROXY_PORT" { default = 46642 }
variable "PROXY_USER" { default = "" }
variable "PROXY_PASSWORD" { default = "" }
