terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.0.0"
    }
  }
}
resource "local_file" "file1" {
  filename        = "File1.txt"
  content         = "This is a sample data"
  file_permission = "0700"


}

resource "local_file" "file2" {
  filename = "File2.txt"
  content  = local_file.file1.content

}