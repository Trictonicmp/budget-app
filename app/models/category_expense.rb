class CategoryExpense < ApplicationRecord
  belongs_to :expense, optional: true
  belongs_to :category, optional: true

  validates :expense_id, presence: { allow_blank: false, message: 'must not be blank.' }
  validates :category_id, presence: { allow_blank: false, message: 'must not be blank.' }
end
