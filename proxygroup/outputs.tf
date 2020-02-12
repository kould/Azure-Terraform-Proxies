output "public_ip_id" {
  description = "id of the public ip address provisoned."
  value       = azurerm_public_ip.myterraformpublicip.*.id
}

output "public_ip_address" {
  description = "The actual ip address allocated for the resource."
  value       = azurerm_public_ip.myterraformpublicip.*.ip_address
}

resource "local_file" "foo" {
    content     = join("\n", azurerm_public_ip.myterraformpublicip.*.ip_address)
    filename = "${path.module}/../proxy_files/${var.region}_proxies.txt"
}