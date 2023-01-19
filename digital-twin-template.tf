# Generate a random integer to create a globally unique name
resource "random_integer" "ri" {
  min = 10000
  max = 99999
}

# Digital Twin instance
resource "azurerm_digital_twins_instance" "sandbox" {
  name                = "DigitalTwinInstance-${random_integer.ri.result}"
  resource_group_name = azurerm_resource_group.rg.name
  location            = var.location
  tags = var.tags
}

