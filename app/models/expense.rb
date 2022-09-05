class Expense < ApplicationRecord
  belongs_to :user
  has_many :categories_expenses, dependent: :delete_all
  has_many :categories, through: :categories_expenses
end