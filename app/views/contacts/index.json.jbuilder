json.array!(@contacts) do |contact|
  json.extract! contact, :id, :first_name, :last_name, :email, :avatar_url, :phone_numbers, :type
  json.url contact_url(contact, format: :json)
end
