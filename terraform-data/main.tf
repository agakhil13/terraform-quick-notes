resource "local_file" "file1" {
  filename = "File1.txt"
  content = data.local_file.datafile.content
}

data "local_file" "datafile" {
  filename = "D:/Akhil/terraform-quick-notes/terraform-local-file/File2.txt"
}