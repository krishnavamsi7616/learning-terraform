variable "a" {
  default = 100
}

// variable block is having one reference, here a is refernce

output "a" {
        value = var.a
}

// variable in terraform can be accessed by var.var_name or ${var.var_name}


output "x" {
        value= "Value of a = ${var.a}"
}

output "values" {
  value = "Values, a = ${var.a}, b = ${var.b}, c = ${var.c}, d = ${var.d}"
}

// If you access variables with any combination strings then ${} is preffered


variable "b" {}
// this variable b is declared in tfvars file


variable "c" {}
// this variable from cli of terraform, terraform apply -auto-approve -var c=400


variable "d" {}
// this variable from shell-scripting, export TF_VAR_d=500
