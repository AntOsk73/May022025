/*locals{
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

sentence_1 = "Montreal bagels taste better at 3am."

sentence_2 = "Poutine should be a food group."

sentence_3  = "Smoked meat is not a sandwich. It's a religion."
vowels      = regexall("[aeiouAEIOU]", local.sentence_3)
vowel_count = length(local.vowels)

sentence_4 = "Why does St-Laurent never sleep?" 

sentence_5 = "Bagels in Montreal are boiled, not baked."
words     = split(" ", local.sentence_5)
third_word = local.words[2] # Index starts at 0

servicecloud = "cloudCadabra"
env = "non-prod"
alltogether = "${local.servicecloud} ${local.env}"

names = ["eastus", "westeurope", "centralindia"]


vms = ["vm1", "vm2", "vm3"]

  
  keys   = ["env", "team", "owner"]
  values = ["prod", "devops", "alice"]
  
  combined_map = zipmap(local.keys, local.values)


  apps = ["api", "frontend", "worker", "db"]
}

locals{
  servicename  =  "ServiceNow"
  forum        =  "letsdiscussit"
  lengthsa     =  length(local.servicename)
}*/



  locals {
  servicecloud = "azurermtesing"
  env = "prod"
  alltogether = "${local.servicecloud} ${local.env}"
}*/

 locals{
    environement = {
     "dev"      = "t2.micro"
     "staging"  = "t2.medium"
     "prod"     = "t2.large"
}
}









