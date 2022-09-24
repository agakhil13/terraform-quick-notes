resource "local_file" "my-var" {
  filename = "File1.txt"
  content = <<EOF
  Name is ${var.name}.
  Class is ${var.class[0]} and ${var.class[1]}.
  Color of Apple is ${var.fruits["apple"]}.
  Color of Mango is ${var.fruits["mango"]}.
  EOF
}