class Product < ApplicationRecord

  has_many :profiles, dependent: :destroy
end
