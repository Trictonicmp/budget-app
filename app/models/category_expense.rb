class CategoryExpense < ApplicationRecord
  belongs_to :expenses, class_name: :Expense, optional: true
  belongs_to :categories, class_name: :Category, optional: true
end