class AddExpensesRefToCategoriesExpenses < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :categories_expenses, :expenses, column: :exp_id
  end
end
