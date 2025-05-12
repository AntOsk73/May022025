locals{
  servicename="bessamemucho"
  forum="bessamemucho"
  lengthsa=length(local.servicename)

top5restaurants=["Pizzaria 900" , "Il Focolaio" , "Damas" , "Chase" , "WaterLemon"]
food = ["Pizza", "Pasta", "Salad" , "Croissant", "Protein bar"]
character_food_map =   { for character in local.top5restaurants: # Convert character list to a set
 character => local.food
}


winterlistOfSports=["weightlifting","swimming","jogging"]
  total_output = ["1973", "2025", "2035"]
  characters = ["luke", "yoda", "darth"]
  enemies_destroyed = [4252, 900, 20000056894]
  character_enemy_map =   { for character in local.characters: # Convert character list to a set
      character => local.enemies_destroyed
 }

 total_numbers = ["42", "77", "13", "98", "3", "64", "55", "27", "89", "6"]

 quote = "Montreal: Where potholes have their own zip code."

other_quotes = ["Toronto: City of condos.", "Vancouver: Rain and real estate."]

sentence1 = "Montreal bagels taste better at 3am."

sentence_2 = "Poutine should be a food group."

sentence_3  = "Smoked meat is not a sandwich. It's a religion."
  vowels      = "aeiouAEIOU"
  vowel_count = length(regexall(local.vowels, local.sentence_3))

}



