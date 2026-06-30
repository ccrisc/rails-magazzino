class AddNullFalseToSuppliersCompany < ActiveRecord::Migration[7.1]
  def change
    change_column_null :suppliers, :company_id, false
  end
end