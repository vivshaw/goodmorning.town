json.extract! greeting, :id, :word, :created_at, :updated_at
json.url greeting_url(greeting, format: :json)
