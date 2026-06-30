class AddNullFalseToItemsCompany < ActiveRecord::Migration[7.1]
  def change
    change_column_null :items, :company_id, false
  end
end