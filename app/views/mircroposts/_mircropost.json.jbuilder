json.extract! mircropost, :id, :content, :user_id, :created_at, :updated_at
json.url mircropost_url(mircropost, format: :json)