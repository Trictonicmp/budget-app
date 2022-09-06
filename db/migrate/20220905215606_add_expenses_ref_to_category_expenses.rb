class AddExpensesRefToCategoryExpenses < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :category_expenses, :expenses, column: :exp_id
  end
end
