json.array!(@hoges) do |hoge|
  json.extract! hoge, :id, :title, :text
  json.url hoge_url(hoge, format: :json)
end
