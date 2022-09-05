class User < ApplicationRecord
  validates :name, presence: { allow_blank: false, message: 'must not be blank.' }
  has_many :expenses
  has_many :categories
end