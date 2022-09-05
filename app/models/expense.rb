class Expense < ApplicationRecord
  belongs_to :user
  has_many :category_expenses, dependent: :delete_all
  has_many :categories, through: :category_expenses

  validates :name, presence: { allow_blank: false, message: 'must not be blank.' }
  validates :amount, comparison: { greater_than_or_equal_to: 0 }
end