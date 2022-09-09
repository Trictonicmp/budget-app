class CreateCategoryExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :category_expenses do |t|
      t.integer :category_id, null: false
      t.integer :expense_id, null: false
      t.timestamps
    end
  end
end
