locals {
  sample  = templatefile("${path.module}/test.tpl", {
  name = "Akhil"
  purpose = "testing"
  }
  )
}
output "test" {
    value = local.sample
}