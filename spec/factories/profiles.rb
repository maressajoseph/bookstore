FactoryGirl.define do
  factory :profile do
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    street { Faker::Address.street_address }
    zipcode { Faker::Address.zip_code }
    city { Faker::Address.city }
    user { build(:user)}
  end
end
