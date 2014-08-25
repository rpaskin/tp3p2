json.array!(@entries) do |entry|
  json.extract! entry, :id, :label, :sequence, :author
  json.url entry_url(entry, format: :json)
end
