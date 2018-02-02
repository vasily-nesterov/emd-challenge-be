json.array! @formulations do |formulation|
  json.extract! formulation, :id, :name

  json.ingredients formulation.formulations_ingredients do |fi|
    json.extract! fi, :percentage
    json.extract! fi.ingredient, :id,
                                 :name,
                                 :minimum_percentage,
                                 :maximum_percentage,
                                 :description,
                                 :classes,
                                 :created_at,
                                 :updated_at
  end
end
