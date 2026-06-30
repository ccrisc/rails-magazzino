class Item < ApplicationRecord
  has_many :order_items, dependent: :destroy
  has_many :orders, through: :order_items
  belongs_to :category, optional: true
  belongs_to :company
  validates :stock, numericality: { greater_than_or_equal_to: 0 }
end