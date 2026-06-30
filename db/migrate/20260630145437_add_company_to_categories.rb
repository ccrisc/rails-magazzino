class AddCompanyToCategories < ActiveRecord::Migration[7.1]
  def change
    add_reference :categories, :company, foreign_key: true
  end
end
