class Category < ApplicationRecord
  belongs_to :user
  has_many :category_expenses
  has_many :expenses, through: :category_expenses
  has_one_attached :icon

  validates :name, presence: { allow_blank: false, message: 'must not be blank.' }
end
