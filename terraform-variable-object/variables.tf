variable "person" {
    type = object({
        name = string
        address = list(string)
    })
    default = {
        name = "Anil"
        address = ["India", "Nepal"]
    }
  
}