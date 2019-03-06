json.array! @recipes.each do |recipe|
  json.id recipe.id
  json.title recipe.title
  json.chef recipe.chef
  json.prep_time recipe.prep_time
  json.ingredients_list recipe.ingredients_list
  json.directions recipe.directions
  json.image_url recipe.image_url
end
