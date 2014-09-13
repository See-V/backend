json.array!(@profils) do |profil|
  json.extract! profil, :id
  json.url profil_url(profil, format: :json)
end
