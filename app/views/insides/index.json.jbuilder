json.array!(@insides) do |inside|
  json.extract! inside, :id
  json.url inside_url(inside, format: :json)
end
