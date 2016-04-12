require 'faker'

#FactoryGirl.define do
#  factory :contact do |f|
#    f.first_name = "Scooby"
#    f.last_name = "Doo"
#    f.email = "scooby@cartoon.tv"
#  end	
#end

FactoryGirl.define do
  factory :contact do |f|
  	f.user_id 1
  	f.first_name { Faker::Name.first_name }
  	f.last_name { Faker::Name.last_name }
  	f.email { Faker::Internet.email }
  end
end