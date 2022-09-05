class CreateCategoriesExpenses < ActiveRecord::Migration[7.0]
  def change
    create_table :categories_expenses do |t|
      t.integer :cat_id, null: false
      t.integer :exp_id, null: false

      t.timestamps
    end
  end
end
