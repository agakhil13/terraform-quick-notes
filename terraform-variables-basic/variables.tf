variable "filename" {
  default = "File1.txt"
  type = string
  description = "This is the name of file"
}

variable "prefix" {
  default = "Mr"
  type = string
  description = "Prefix for pet"
}

variable "separator" {
  default = "-"
  type = string
  description = "separator for prefix and pet name"
}

variable "length" {
  default = 2
  type = number
  description = "length of pet name"
}