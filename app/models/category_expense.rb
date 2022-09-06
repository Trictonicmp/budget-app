class CategoryExpense < ApplicationRecord
  belongs_to :expense, optional: true
  belongs_to :category, optional: true

  validates :exp_id, presence: { allow_blank: false, message: 'must not be blank.' }
  validates :cat_id, presence: { allow_blank: false, message: 'must not be blank.' }
end
