json.id inside_recipe.id
json.title inside_recipe.title
json.chef inside_recipe.chef
json.ingredients inside_recipe.ingredients
json.directions inside_recipe.directions
json.prep_time inside_recipe.prep_time
json.image_url inside_recipe.image_url
json.formatted do
  json.created_at inside_recipe.friendly_created_at
  json.directions inside_recipe.directions_list
  json.prep_time inside_recipe.friendly_prep_time
  json.ingredients inside_recipe.ingredients_list
end
