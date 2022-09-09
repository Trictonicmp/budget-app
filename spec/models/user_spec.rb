require 'rails_helper'

RSpec.describe User, type: :model do
  let(:author) do
    User.new(
      name: 'Amaury Permer',
      email: 'some@email.com',
      password: '123456'
    )
  end

  before { author.save }

  describe 'User validations: ' do
    it 'Name should be set thus not be valid' do
      author.name = nil
      expect(author).to_not be_valid
    end

    it 'Name should be more than 1 letter thus be valid' do
      author.name = 'a'
      expect(author).to be_valid
    end

    it 'Name should be changed to "Mario"' do
      author.name = 'Mario'
      name = author.name
      expect(name).to eql('Mario')
    end
  end
end
