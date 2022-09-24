resource "local_file" "file" {
  filename = var.filename[count.index]
    content = "This is the file name ${var.filename[count.index]} and the path is ${path.cwd}/${var.filename[count.index]}"
  count = length(var.filename)
}