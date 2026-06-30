class AddCompanyToItems < ActiveRecord::Migration[7.1]
  def change
    add_reference :items, :company, foreign_key: true
  end
end
