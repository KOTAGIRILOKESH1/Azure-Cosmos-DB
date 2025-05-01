provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy = true
      
    }
  }
  subscription_id = "3bc8f069-65c7-4d08-b8de-534c20e56c38"
}

# provider "azurerm" {
#   features {}  # Required block even if empty
# }