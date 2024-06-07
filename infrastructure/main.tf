terraform {
  required_providers {
    ns1 = {
      source = "ns1-terraform/ns1"
    }
  }
}

locals {
  custom_dns = "blog.irrelevantelephant.co.uk"
}

resource "ns1_zone" "zone" {
  zone = local.custom_dns
}

resource "ns1_record" "www" {
  zone   = ns1_zone.zone.zone
  domain = local.custom_dns
  type   = "A"
  answers {
    answer = "185.199.108.153"
  }
  answers {
    answer = "185.199.109.153"
  }
  answers {
    answer = "185.199.110.153"
  }
  answers {
    answer = "185.199.111.153"
  }
}