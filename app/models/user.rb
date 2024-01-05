class User < ApplicationRecord
  validates :name, presence: true
  validates :surname, presence: true
  validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@[^@\s]+\z/ }

  has_many :orders, dependent: :destroy
  has_many :order_items, dependent: :destroy, through: :orders

  def full_name
    "#{name} #{surname}"
  end

end