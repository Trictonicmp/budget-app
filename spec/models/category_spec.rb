require 'rails_helper'

RSpec.describe Category, type: :model do
  let(:user) do
    User.new(
      name: 'John',
      email: 'some@email.com',
      password: '123456'
    )
  end

  let(:category) do
    Category.new(
      user:,
      name: 'Cat 1',
      icon_url: 'https://i.pinimg.com/474x/57/9b/28/579b286a34070bf119f5f5959f2d2536.jpg'
    )
  end

  before do
    user.save
    category.save
  end

  describe 'Category validations' do
    it 'should have a name' do
      expect(category).to be_valid
    end

    it 'is not be valid if name does not exists' do
      category.name = nil
      expect(category).to_not be_valid
    end

    it 'should have an icon_url' do
      expect(category).to be_valid
    end

    it 'is valid if icon_url does not exists (icon is handled with ActiveStorage)' do
      category.icon_url = nil
      expect(category).to be_valid
    end
  end
end
