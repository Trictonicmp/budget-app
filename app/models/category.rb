class Category < ApplicationRecord
  belongs_to :user
  has_many :category_expenses, dependent: :delete_all
  has_many :expenses, through: :category_expenses

  validates :name, presence: { allow_blank: false, message: 'must not be blank.' }
  validates :icon_url, presence: { allow_blank: false, message: 'must not be blank.' }
end
