json.extract! profile, :id, :name, :key, :created_at, :updated_at
json.url profile_url(profile, format: :json)