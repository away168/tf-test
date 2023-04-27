module "test_module" {
    source = "../modules/test-module"
    
}

output "foo" {
    value = module.test_module.foo
}