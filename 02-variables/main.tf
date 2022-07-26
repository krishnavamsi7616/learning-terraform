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


// If you access variables with any combination strings then ${} is preffered

