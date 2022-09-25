resource "local_file" "file" {
  filename = each.value
    content = "This is the file name ${each.value} and the path is ${path.cwd}/${each.value}"
  for_each = toset(var.filename)
}
