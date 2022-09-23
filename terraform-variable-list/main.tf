resource "random_pet" "pet_name" {
    prefix = var.prefix[0]
    separator = "-"
    length = 3
  
}