resource "local_file" "file1" {
  filename= "File1.txt"
  content =  "Name is ${var.person["name"]}"
}