provider "azurerm" {
  subscription_id = var.AZURE_SUBSCRIPTION_ID
  client_id       = var.AZURE_CLIENT_ID
  client_secret   = var.AZURE_CLIENT_SECRET
  tenant_id       = var.AZURE_TENANT_ID
}
module "proxygroupeastus" {
  source = "./proxygroup"
  region = "East US"
}
module "proxygroupeastus2" {
  source = "./proxygroup"
  region = "East US 2"
}
module "proxygroupuscentral" {
  source = "./proxygroup"
  region = "Central US"
}
module "proxygroupusnorthcentral" {
  source = "./proxygroup"
  region = "North Central US"
}
module "proxygroupussouthcentral" {
  source = "./proxygroup"
  region = "South Central US"
}
module "proxygroupuswest" {
  source = "./proxygroup"
  region = "West US"
}
module "proxygroupuswest2" {
  source = "./proxygroup"
  region = "West US 2"
}
module "proxygroupuswestcentral" {
  source = "./proxygroup"
  region = "West Central US"
}
