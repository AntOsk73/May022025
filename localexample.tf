locals{
  servicename="bessamemucho"
  forum="bessamemucho"
  lengthsa=length(local.servicename)

top5restaurants=["Pizzaria 900" , "Il Focolaio" , "Damas" , "Chase" , "WaterLemon"]

winterlistOfSports=["weightlifting","swimming","jogging"]
  total_output = ["1973", "2025", "2035"]
  characters = ["luke", "yoda", "darth"]
  enemies_destroyed = [4252, 900, 20000056894]
  character_enemy_map =   { for character in local.characters: # Convert character list to a set
      character => local.enemies_destroyed

}
}
