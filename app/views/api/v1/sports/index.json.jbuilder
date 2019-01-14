json.sports do
  json.array! @sports do |sport|
    json.extract! sport, :id, :name, :photo
  end
end
