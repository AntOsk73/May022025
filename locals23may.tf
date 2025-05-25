locals {
  nested_list = [
    ["apple", "banana"],
    ["orange", "grape"],
    ["kiwi"]
]

flat_list = flatten(local.nested_list)
}

output "may23list"{
    value = local.nested_list
}


output "flattened_list_output" {
  value = local.flat_list
}
