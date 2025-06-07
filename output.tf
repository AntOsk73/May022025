/*output "print"{
    value = local.servicename
}*/

/*output "secondprint"{
    value = local.forum
}*/
 
/*output "lengthsa"{
    value=local.lengthsa
}*/

/*output "wintersportslist"{
    value=[for sport in local.winterlistOfSports:sport]
   
}*/

 /*output "total_output"{
   value=[for sport in local.total_output:sport]

}*/

   /*output "characterst"{
   value=[for sport in local.characters:sport]

}*/

/*output "total_sum" {
  value = sum([for total in local.total_output : tonumber(total)])
}*/

/*output "character_enemy_output" {
  value = local.character_enemy_map
}*/

/*output "top5restaurants_output"{
 value = local.character_food_map
}*/

/*output "total_numbers" {
  value = sum([for total in local.total_numbers : tonumber(total)])
}*

/*output "total_liststring" {
  value = sum([for total in var.number : tonumber(total)])
}*/

/*output "uppercased_sentence" {
  value = upper(var.sentence)
}*/

/*output "lowercased_word" {
  value = lower(var.word)
}*/

/*output "extract_canada" {
  value = substr(var.full_text, 26, 6)
}*/
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

/*output "upper_quote" {
  value = upper(local.quote)
}*/

/*output "lower_quote" {
  value = lower(local.quote)
}*/

/*output "extract_Montreal" {
  value = substr(local.quote, 0, 10)  # "Montreal: "
}*/

/*output "Reversed" {
  value = join("", reverse(split("", local.quote)))
}*/

/*output "Replacing_potholes" {
  value = replace(local.quote, "potholes", "hotdogs")
}*/

/*output "has_zip" {
  value = can(regex("zip", local.quote))  # true or false
}*/

/*output "other_quotes" {
  value = join(" | ", concat(local.other_quotes, [local.quote]))
}*/

/*output "words" {
  value = split(" ", local.quote)
}*/

/*output "quote_length" {
  value = length(local.quote)
}*/

/*output "branded_quote" {
  value = "${local.quote} #TrueStory"
}*/

/*output "Reversing" {
  value = join("", reverse(split("", local.sentence_1)))
}*/

/*output "extract_group" {
  value = substr(local.sentence_2, 25, 29)  # "group: "
}*/

/*output "vowel_count" {
  value = local.vowel_count
}*/

/*output "Replacing_spaces" {
  value = replace(local.sentence_4, " ", "_")
}*/

/*output "third_word" {
  value = local.third_word
}*/

/*output "excercise" {
  value = split ("," , local.text_1)
}*/

/*output "exercise_1" {
  value = local.text_1
}*/

/*output "excercise_2" {
  value = length (split ("," , local.text_1))
}*/

/*output "excercise_3" {
value = element(split(",", local.text_1) , length (split ("," , local.text_1)) -1)
}*

/*output "excercise_4" {
  value = element(["Antoine", "Ovadia", "Onome", "Sean", "Negar"], 4)
}*/

/*output "excercise_5" {
  value = element(["Antoine", "Ovadia", "Onome", "Sean", "Negar"], 3)
}*/

/*output "printoutFull" {
  value = local.alltogether
}*/

/*output "uppercase_names" {
  value = [for name in local.names : upper(name)]
}*/

/*output "vm_map_with_index" {
  value = { for index, vm in local.vms : index => vm }
}*/

/*output "result_map" {
  value = local.combined_map
}*/

/*output "total_apps" {
  value = length(local.apps)
  description = "The total number of applications in the list."
}*/

/*output "selected_environment_name" {
  value       = local.environment
  description = "The friendly name of the current environment based on workspace."
}*/

/*output "sum_of_converted_numbers" {
  value    = sum([for test in var.numbers_as_listOfStrings : tonumber(test)])
}*/

/*output "upperCase_test1" {
  value = upper(var.test1_touppercase)
}*?

/*output "sub_test" {
  value = substr(var.sub_stringtest, 14, 9)
}*/

/*output "applying_reverse" {
  value = join("", [for i in range(length(var.test_reverse) -1, -1, -1) : substr(var.test_reverse, i, 1)])
}*/

/*output "applying_extract" {
  value = substr(var.inputText_Toexctract, var.inputStart_index, var.input_length)
}*/

/*output "vowel_count" {
  value = length([for c in split("", lower(var.input_vowels)) : c if contains(["a", "e", "i", "o", "u"], c)])
}*/

/*output "underscore_text" {
  value = replace(var.inputText_toReplace," ", "_")
}*/

/*output "extracted_word" {
  value = split(" ", var.getWord_fromText)[var.word_index]
}*/

/*output "clean_text" {
 value = join("", [for c in split("", var.remove_fromList) : c if !contains(var.punctuation_list, c)])
}*/

output "even_characters" {
  value = join("", [for i in range(0, length(var.odd_pick), 2) : substr(var.odd_pick, i, 1)])
}

/*output "backwars_words" {
  value = join(" ", [for i in range(length(split(" ", var.input_backwards)) -1, -1, -1) : split(" ", var.input_backwards)[i]])
}*/

output "printed_names" {
  value = local.names_test
}

output "split_names" {
  value = split(",", local.names_test)
}

output "lengthSplit_names" {
  value = length(split(",", local.names_test))
}














