locals {
    mylist = ["L1", "L2", "L3"]
}

resource  "local_file" "myfile" {
    filename = "${each.value}.txt"
    for_each = toset(local.mylist)
    content = each.value

}