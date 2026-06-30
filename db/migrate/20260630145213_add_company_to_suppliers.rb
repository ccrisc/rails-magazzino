class AddCompanyToSuppliers < ActiveRecord::Migration[7.1]
  def change
    add_reference :suppliers, :company, foreign_key: true
  end
end
