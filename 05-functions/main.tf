variable "alist" {
  default = [1,2]
}

output "alist_lenth" {
  value = length(var.alist)
}