resource "local_file" "file1" {
    filename = "File1.txt"
    content = "This is a sample data"
    file_permission = "0700"

  
}

resource "local_sensitive_file" "file2" {
    filename = "File2.txt"
    content = local_file.file1.content
  
}