#if there is a requirement to add one more tag like Owner = Rajat so here we can using local.tf
#use merge function for it
/*
Instead of adding owner tags everywhere in code:

tags = {
  environment = "dev"
  project     = "accenture-infra"
  managed_by  = "terraform"
  owner       = "rajat"
}

You write once in local.tf:

tags = local.common_tags

its Reusable

*/



locals {
  common_tags = merge(var.tags,{
    owner = "Rajat"

  })
}