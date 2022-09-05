class AddUserRefToCategories < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :categories, :users, column: :id
  end
end
