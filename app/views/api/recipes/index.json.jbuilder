json.array! @recipes.each do |recipe|
  json.partial! "recipe.json.jbuilder", inside_recipe: recipe # @recipes
end
