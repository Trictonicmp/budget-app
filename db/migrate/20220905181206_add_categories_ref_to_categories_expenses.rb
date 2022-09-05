class AddCategoriesRefToCategoriesExpenses < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :categories_expenses, :categories, column: :cat_id
  end
end
