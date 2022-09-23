resource "local_file" "file1" {
    filename = "File1.txt"
    content = random_pet.pet1.id
    depends_on = [
      random_pet.pet1
    ]
}

resource "random_pet" "pet1" {
    prefix = "Mrs"
    separator = "."
    length = 4
  
}