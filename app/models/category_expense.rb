class CategoryExpense < ApplicationRecord
  belongs_to :expenses, class_name: :Expense, optional: true
  belongs_to :categories, class_name: :Category, optional: true

  validates :exp_id, presence: { allow_blank: false, message: 'must not be blank.' }
  validates :cat_id, presence: { allow_blank: false, message: 'must not be blank.' }
end