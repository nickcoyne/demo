require 'rails_helper'

RSpec.describe User do
  let(:user) { build_stubbed(:user) }

  it 'has a valid factory' do
    expect(user).to be_valid
  end

  describe 'validations' do
    it 'requires email address' do
      user.email = ''
      expect(user.valid?).to eq(false)
    end

    it 'requires email address to be valid' do
      user.email = '@co.nz'
      expect(user.valid?).to eq(false)
    end
  end
end
