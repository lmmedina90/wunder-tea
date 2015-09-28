json.array!(@teas) do |tea|
  json.extract! tea, :id, :kind, :quantity, :user_id
  json.url tea_url(tea, format: :json)
end
