json.array!(@users) do |user|
  json.extract! user, :id, :is_admin, :name, :email
  json.url user_url(user, format: :json)
end
