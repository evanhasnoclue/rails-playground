json.extract! @sport, :id, :name, :photo
json.fields @sport.fields do |field|
  json.extract! field, :id, :name, :description, :capacity, :price_per_hour
end
