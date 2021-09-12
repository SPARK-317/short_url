json.array! @short_urls do |short| 
  json.extract! short, :id, :address, :count
end