# variable "rg_name" {
# type  = list(string)
# default = ["rg-nilay", "rg-rahul", "rg-john", "rg-mark", "rg-rock"]
# }

resource "azurerm_resource_group" "rg-don1" {
count = length(var.rg_names)
name = var.rg_names[count.index]
location = "East US"
}

resource "azurerm_resource_group" "rg-don1" {
count = 6 
name = "rg-rahul-${count.index -2 }"
location = "East US"
}
