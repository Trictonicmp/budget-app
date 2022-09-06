class Expense < ApplicationRecord
  belongs_to :user
  has_many :category_expense
  has_many :categories, through: :category_expense

  validates :name, presence: { allow_blank: false, message: 'must not be blank.' }
  validates :amount, comparison: { greater_than_or_equal_to: 0 }
end
