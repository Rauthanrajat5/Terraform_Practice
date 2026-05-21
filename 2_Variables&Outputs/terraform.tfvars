#here we provide values of each resoure which we declared in variables.tf

resource_config = {
  rg_name = "test_Rg"
  location = "East US"
  St_name = "filesst52478"
}

tags = {
  "environment" = "dev"
  "project"     = "accenture-infra" 
  "managed_by"  = "terraform"
  "company" = "fedpx"
}

containerNames = ["image","backup" ,"videos"]