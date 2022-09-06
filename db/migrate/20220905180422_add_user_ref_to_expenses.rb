class AddUserRefToExpenses < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :expenses, :users, column: :id
  end
end
