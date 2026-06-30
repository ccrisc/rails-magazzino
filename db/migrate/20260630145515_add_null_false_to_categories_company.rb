class AddNullFalseToCategoriesCompany < ActiveRecord::Migration[7.1]
  def change
    change_column_null :categories, :company_id, false
  end
end