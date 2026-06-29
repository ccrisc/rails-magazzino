class CreateSuppliers < ActiveRecord::Migration[7.1]
  def change
    create_table :suppliers do |t|
      t.string :name, null: false
      t.string :email
      t.string :phone
      t.string :vat_number
      t.string :tax_code
      t.string :address
      t.string :city
      t.string :zip_code
      t.string :country
      t.text :notes
      t.boolean :active, default: true, null: false

      t.timestamps null: false
    end
  end
end
