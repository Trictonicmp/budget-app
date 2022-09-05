class Expense < ApplicationRecord
  belongs_to :user
  has_many :category_expenses, dependent: :delete_all
  has_many :categories, through: :category_expenses
end