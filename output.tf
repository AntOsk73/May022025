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
 value = [for sport in local.top5restaurants:sport]
   
}


