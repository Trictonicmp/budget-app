class AddExpensesRefToCategoryExpenses < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :category_expenses, :expenses, column: :expense_id
  end
end
