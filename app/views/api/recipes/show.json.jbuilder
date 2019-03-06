json.id @recipe.id
json.title @recipe.title
json.chef @recipe.chef
json.ingredients @recipe.ingredients
json.directions @recipe.directions
json.prep_time @recipe.prep_time
json.image_url @recipe.image_url
json.formatted do
  json.created_at @recipe.friendly_created_at
  json.directions @recipe.directions_list
  json.prep_time @recipe.friendly_prep_time
  json.ingredients @recipe.ingredients_list
end
