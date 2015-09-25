require 'rails_helper'

RSpec.describe UserAddress, type: :model do

  let(:user_address){create(:user_address)}

  context '(associations)' do

    specify 'belongs to user' do
      expect(user_address).to respond_to(:user)
    end

    specify 'belongs to address' do
      expect(user_address).to respond_to(:address)
    end

  end


end
