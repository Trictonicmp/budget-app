class AddUserRefToCategories < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :categories, :users, column: :user_id
  end
end
