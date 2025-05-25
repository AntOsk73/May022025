locals {
  nested_list = [
    ["apple", "banana"],
    ["orange", "grape"],
    ["kiwi"]
]

}

output "may23list"{
    value = local.nested_list
}


output "flattened_list_output" {
  value = flatten(local.flat_list)
}
