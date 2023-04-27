terraform {
  backend "remote" {
    hostname     = "backend.api.env0.com"
    organization = "9edac48b-0c62-45d9-9dfc-131deb39979b"
    workspaces {
      name = "project-test"
    }
  }
}

module "test_module" {
    source = "../modules/test-module"
    
}

output "foo" {
    value = module.test_module.foo
}