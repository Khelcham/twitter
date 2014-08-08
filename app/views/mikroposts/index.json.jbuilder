json.array!(@mikroposts) do |mikropost|
  json.extract! mikropost, :content, :user_id
  json.url mikropost_url(mikropost, format: :json)
end