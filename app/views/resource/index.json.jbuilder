json.array!(@documents) do |document|
  json.extract! document, :name, :description
  json.url document_url(document, format: :json)
end
