resource "local_file" "file1" {
    filename = var.filename
    content = random_pet.pet1.id
    depends_on = [
      random_pet.pet1
    ]
}

resource "random_pet" "pet1" {
    prefix = var.prefix
    separator = var.separator
    length = var.length
  
}