class Item < ApplicationRecord
  monetize :price_cents

  has_many :outfit_items
  has_many :order_outfit_items

  validates :name, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :photo, presence: true

  def sizes
    # (6..13).to_a
    ["Small", "Medium", "Large"]
  end

  def shoe_sizes
    ("6".."13").to_a
  end
end
