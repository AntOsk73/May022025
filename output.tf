output "print"{
    value = local.servicename
}
output "secondprint"{
    value = local.forum
}
 
output "lengthsa"{
    value=local.lengthsa
}

output "wintersportslist"{
    value=[for sport in local.winterlistOfSports:sport]
   
}

 output "total_output"{
   value=[for sport in local.total_output:sport]

}

   output "characterst"{
   value=[for sport in local.characters:sport]

}

output "total_sum" {
  value = sum([for total in local.total_output : tonumber(total)])
}

output "character_enemy_output" {
  value = local.character_enemy_map
}

output "top5restaurants_output"{
 value = local.character_food_map
}

output "total_numbers" {
  value = sum([for total in local.total_numbers : tonumber(total)])
}

output "total_liststring" {
  value = sum([for total in var.number : tonumber(total)])
}

output "uppercased_sentence" {
  value = upper(var.sentence)
}

output "lowercased_word" {
  value = lower(var.word)
}

output "extract_canada" {
  value = substr(var.full_text, 26, 6)
}
/*
"I love the country called Canada, it is awesome"
substr(string, offset, length)
string: The full input string.
offset: Starting index (0-based).
length: Number of characters to extract.
Sentence: "I love the country called Canada, it is awesome"
Index of "C" in "Canada" → Position 26 (0-based)
Length of "Canada" → 6
*/






