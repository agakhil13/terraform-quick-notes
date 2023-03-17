locals {
    local_key = {
        "S1.txt" = "This is a content of S1",
        "S2.txt" = "This is a content of S2"
    }
    }

resource "local_file" "files" {
    for_each = local.local_key
    filename = each.key
    content = each.value
  
}

output "file_name" {
  value = [for s in local_file.files : s.filename]
}