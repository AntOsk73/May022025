locals {
  nested_list = [
    ["apple", "banana"],
    ["orange", "grape"],
    ["kiwi"]
  ]
}

output "23may"{
    value = local.nested_list
