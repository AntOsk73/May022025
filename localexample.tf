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

listoffavoritenumbers=["My favorite numbers are"
total_output = ["42", "77", "13", "98", "3", "64", "55", "27", "89", "6"]
}

}



