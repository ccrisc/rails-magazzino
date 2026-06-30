# frozen_string_literal: true

class Category < ApplicationRecord
    has_many :items, dependent: :nullify
    belongs_to :company
    validates :name, presence: true
end
