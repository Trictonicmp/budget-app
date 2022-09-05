class CategoriesExpenses < ApplicationRecord
  belongs_to :expenses
  belongs_to :categories
end