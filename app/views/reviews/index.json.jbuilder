json.array!(@reviews) do |review|
  json.extract! review, :id, :rate, :comment
  json.url review_url(review, format: :json)
end
