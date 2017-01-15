json.extract! node, :id, :name, :address, :username, :password, :user_id, :created_at, :updated_at
json.url node_url(node, format: :json)