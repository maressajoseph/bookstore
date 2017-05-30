class Product < ApplicationRecord

  has_many :carts, dependent: :destroy

  has_many :customers, through: :carts, source: :profile

  def self.order_by(sort_order)
    if sort_order == "Sort A-Z"
      order(title: :asc)
    elsif sort_order == "Sort Z-A"
      order(title: :desc)
    elsif sort_order == "Price low-high"
        order(price: :asc)
    elsif sort_order == "Price high-low"
        order(price: :desc)
    else
      order(created_at: :asc)
    end
  end
end
