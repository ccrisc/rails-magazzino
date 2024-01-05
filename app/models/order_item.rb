class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :item

  validate :update_item_stock

  private

  def update_item_stock
    new_stock = self.item.stock - self.quantity
    if new_stock >= 0
      self.item.update(stock: new_stock)
    else
      errors.add(:stock, 'Lo stock non può essere sotto zero')
    end
  end
end
