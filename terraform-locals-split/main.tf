locals {
  ip_split = split(".", var.ip)
  reverse_dns_zone_projects = {
    "84.179.108.in-addr.arpa" = "vf-cis-evo-prd-cmn-dns-01"
  }
  ## Subnets that are not multiples of /24 are not included above and should be using the flag "skip_ptr=true". So far,
  ## this only concerns the office subnet which is considered a prod subnet. This is why the value "vf-cis-evo-prd-cmn-dns-01"
  ## is given in the below try function if no match is found. Note that if a user forgets to set the skip_ptr=true for a 
  ## non-/24 subnet, no PTR record will be created as the associated reverse lookup zone does not exist.
  dns_project       = try(local.reverse_dns_zone_projects[local.reverse_zone_dns], "vf-cis-evo-prd-cmn-dns-01")
  reverse_zone_dns  = "${local.ip_split[2]}.${local.ip_split[1]}.${local.ip_split[0]}.in-addr.arpa"
  reverse_zone_name = "vf-evo-glb-priv-${local.ip_split[2]}-${local.ip_split[1]}-${local.ip_split[0]}-in-addr-arpa-dns-01"
  forward_zone_dns  = local.dns_project == "vf-cis-evo-prd-cmn-dns-01" ? "prd.cloud.evo.vodafone.com" : "tst.cloud.evo.vodafone.com"
  forward_zone_name = local.dns_project == "vf-cis-evo-prd-cmn-dns-01" ? "vf-evo-glb-priv-prd-cloud-evo-vodafone-com-dns-01" : "vf-evo-glb-priv-tst-cloud-evo-vodafone-com-dns-01"
}

variable "ip" {
    default = "1.2.3.4"
  
}
# output "ip" {
#   value = var.ip
# }
output "ip_split" {
  value = local.ip_split
}

variable "instance" {
  default = {
    name: {
        first_name: "Akhil",
        last_name: "Gupta"
    }
  }
}

output "instance_details" {
  value = {
    for k, v in var.instance : k => v.last_name
  }
}