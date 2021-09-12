json.array! @long_urls do |long| 
  json.extract! long, :id, :address, :count
end