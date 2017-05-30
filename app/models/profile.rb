class Profile < ApplicationRecord
  belongs_to :user
  has_many :carts, dependent: :destroy

  has_many :cart_products, through: :carts, source: :product

  validates :first_name, :last_name, :street, :zipcode, :city, presence: true

  def full_name
    "#{first_name} #{last_name}"
  end

end
