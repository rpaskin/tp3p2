json.array!(@statiscs) do |statisc|
  json.extract! statisc, :id, :id, :label, :sequence, :author
  json.url statisc_url(statisc, format: :json)
end
