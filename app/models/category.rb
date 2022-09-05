class Category < ApplicationRecord
  belongs_to :user
  has_many :categories_expenses, dependent: :delete_all
  has_many :expenses, through: :categories_expenses
end