require 'rails_helper'

RSpec.describe Address, type: :model do

  let(:address) {create(:address)}

  context '(associations)' do

    specify 'has many users' do
      expect(address).to respond_to(:users)
    end

    specify 'has one sports team' do
      expect(address).to respond_to(:sports_team)
    end

    specify 'has many user_address joins' do
      expect(address).to respond_to(:user_addresses)
    end

  end

end
