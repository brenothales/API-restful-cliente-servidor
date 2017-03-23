# json.array! @dogs do |dog|
#   json.id dog.id
#   json.dog dog.name_dog
#   json.raca dog.breed.name
#   json.castrado dog.castrated
#   json.data_de_nascimento dog.date_of_birth
#   json.nome_dono dog.owners_name
#   json.telefone dog.phone
#   json.ultima_visitas dog.last_visit

# end


json.array! @dogs do |dog|
  json.breed do
    json.id dog.breed.id
    json.name dog.breed.name
  end
  json.id dog.id
  json.dog dog.name_dog
  json.genero dog.genero
  json.raca dog.breed.name
  json.statusDisplay dog.castrated
  json.castrado dog.castrated
  json.data_de_nascimento dog.date_of_birth
  json.nome_dono dog.owners_name
  json.telefone dog.phone
  json.ultima_visitas dog.last_visit
  json.status dog.status
end