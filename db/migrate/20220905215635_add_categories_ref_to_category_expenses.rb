class AddCategoriesRefToCategoryExpenses < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :category_expenses, :categories, column: :category_id
  end
end
