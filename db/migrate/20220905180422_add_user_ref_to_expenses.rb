class AddUserRefToExpenses < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :expenses, :users, column: :user_id
  end
end
