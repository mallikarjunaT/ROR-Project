json.extract! newemail, :id, :name, :email, :login, :created_at, :updated_at
json.url newemail_url(newemail, format: :json)
