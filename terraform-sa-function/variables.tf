variable "prefix1" {
  type    = string
  default = "1234"
}

variable "names" {
  type    = list(any)
  default = ["Dev", "QA", "TEST"]
}