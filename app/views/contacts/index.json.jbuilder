json.array!(@contacts) do |contact|
  json.extract! contact, :id, :first_name, :last_name, :email, :avatar_file_name, :phone_numbers, :contact_type
  json.url contact_url(contact, format: :json)
end
