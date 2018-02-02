json.array! @ingredients do |ingredient|
  json.extract! ingredient, :id,
                            :name,
                            :minimum_percentage,
                            :maximum_percentage,
                            :description,
                            :classes,
                            :created_at,
                            :updated_at
end
