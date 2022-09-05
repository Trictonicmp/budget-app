class User < ApplicationRecord
  has_many :expenses
  has_many :categories
  validates :name, presence: { allow_blank: false, message: 'must not be blank.' }
end