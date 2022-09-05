class Category < ApplicationRecord
  belongs_to :user
  has_many :category_expenses, dependent: :delete_all
  has_many :expenses, through: :category_expenses
end