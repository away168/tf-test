# terraform {
#   backend "remote" {
#     hostname     = "backend.api.env0.com"
#     organization = "bde19c6d-d0dc-4b11-a951-8f43fe49db92.5572ceeb-c526-4152-b6de-ea8f3adfc4f1"
#     workspaces {
#       name = "project-test"
#     }
#   }
# }

terraform {
  backend "remote" {
    organization = "wayfamily"
    workspaces {
      name = "tf-test"
    }
  }
}

# terraform {
#   cloud {
#     organization = "wayfamily"

#     workspaces {
#       name = "tf-test"
#     }
#   }
# }

module "test_module" {
    source = "../modules/test-module"
    
}

output "foo" {
    value = module.test_module.foo
}
