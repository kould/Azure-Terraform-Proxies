# All declared variables. If you wan't to set custom value for any of variables,
# it's better to create file `terraform.tfvars` and put there custom configuration,
# format: `VARIABLE_NAME="variable value"`

# Access to AWS API. Create new user with `AmazonEC2FullAccess` permissions
# here `https://console.aws.amazon.com/iam/home?#/users` and put user's AWS_ACCESS_KEY_ID and
# AWS_SECRET_ACCESS_KEY to the `terraform.tfvars` file
variable "AZURE_SUBSCRIPTION_ID" {}
variable "AZURE_CLIENT_ID" {}
variable "AZURE_CLIENT_SECRET" {}
variable "AZURE_TENANT_ID" {}
variable "AZURE_INSTANCE_PASSWORD" {}
variable "AZURE_INSTANCES_COUNT" { default = 3 }
variable "AZURE_INSTANCE_USER_NAME" { default = "ubuntu" }
variable "AZURE_DEFAULT_REGION" { default = ["eastus"] }
variable "AZURE_VM_SIZE" { default = "Standard_B1ls" }
variable "PROXY_TYPE" { default = "socks" }
variable "PROXY_PORT" { default = 46642 }
variable "PROXY_USER" { default = "" }
variable "PROXY_PASSWORD" { default = "" }
