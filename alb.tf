// ALB
//**********************************************************************************************
resource "azurerm_application_load_balancer" "alb" {
  name                = var.name
  resource_group_name = var.resource_group_name
  location            = var.location
  tags = merge(
    var.resource_tags,
    var.deployment_tags
  )
}
//**********************************************************************************************


// ALB Subnet Association
//**********************************************************************************************
resource "azurerm_application_load_balancer_subnet_association" "alb" {
  name                         = azurerm_application_load_balancer.alb.name
  application_load_balancer_id = azurerm_application_load_balancer.alb.id
  subnet_id                    = var.subnet_id
}
//**********************************************************************************************