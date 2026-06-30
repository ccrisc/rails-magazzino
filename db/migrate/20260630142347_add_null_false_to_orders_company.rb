class AddNullFalseToOrdersCompany < ActiveRecord::Migration[7.1]
  def change
    change_column_null :orders, :company_id, false
  end
end