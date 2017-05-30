FactoryGirl.define do
  factory :product do
    title { Faker::Book.title }
    author { Faker::Book.author }
    description {Faker::Lorem.paragraph }
    price { Faker::Number.decimal(2) }
    image { Faker::Lorem.word }
  end
end
