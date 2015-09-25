require 'rails_helper'

RSpec.describe User, type: :model do

  let(:user){create(:user)}

  context '(associations)' do

    specify 'has many addresses' do
      expect(user).to respond_to(:addresses)
    end

    specify 'belongs to one sports team' do
      expect(user).to respond_to(:sports_team)
    end

    specify 'has many user_address joins' do
      expect(user).to respond_to(:user_addresses)
    end

  end

end
