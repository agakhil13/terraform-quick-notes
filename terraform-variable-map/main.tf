resource "local_file" "file" {
    filename = "File1.txt"
    content = var.content["statement2"]
  
}