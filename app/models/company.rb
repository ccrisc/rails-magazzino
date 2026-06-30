# frozen_string_literal: true

class Company < ApplicationRecord
    has_many :managers, dependent: :destroy
    has_many :orders, dependent: :nullify
    has_many :items, dependent: :nullify
    has_many :users, dependent: :nullify
    has_many :suppliers, dependent: :nullify
    has_many :categories, dependent: :nullify
    validates :name, presence: true, uniqueness: true

end
