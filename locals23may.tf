locals {
  nested_list = [
    ["apple", "banana"],
    ["orange", "grape"],
    ["kiwi"]
  ]
}

output "may23"{
    value = local.nested_list
}
