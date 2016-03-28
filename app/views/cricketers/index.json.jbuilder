json.array!(@cricketers) do |cricketer|
  json.extract! cricketer, :id, :fullname, :country, :description, :posted_from
  json.url cricketer_url(cricketer, format: :json)
end
