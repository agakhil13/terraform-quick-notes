resource "local_file" "file1" {
  filename = "File1.txt"
  content  = "This is sample data."
  provisioner "local-exec" {
    when    = create
    command = "echo Resource created."
  }
  provisioner "local-exec" {
    when    = destroy
    command = "echo Resource deleted"
  }
  provisioner "local-exec" {
    command = "date"
  }

}