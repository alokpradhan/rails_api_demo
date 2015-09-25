require 'rails_helper'

RSpec.describe SportsTeam, type: :model do

  let(:sports_team){create(:sports_team)}

  context '(associations)' do

    it 'one address' do
      expect(sports_team).to respond_to(:address)
    end

    it 'has many fans' do
      expect(sports_team).to respond_to(:fans)
    end

  end


end
