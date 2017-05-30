FactoryGirl.define do
  factory :cart do
    profile { build(:profile)}
    product { build(:product)}
  end
end
