require 'rails_helper'

RSpec.describe Expense, type: :model do
  let(:user) do
    User.new(
      name: 'John',
      email: 'some@email.com',
      password: '123456'
    )
  end

  let(:expense) do
    Expense.new(
      user:,
      name: 'Expense 1',
      amount: '15.3'
    )
  end

  before do
    user.save
    expense.save
  end

  describe 'Expense validations' do
    it 'should have a name' do
      expect(expense).to be_valid
    end

    it 'is not be valid if name does not exists' do
      expense.name = nil
      expect(expense).to_not be_valid
    end

    it 'should have a numeric amount' do
      expect(expense).to be_valid
    end

    it 'is not valid if amount is a negative number' do
      expense.amount = -1
      expect(expense).to_not be_valid
    end
  end
end