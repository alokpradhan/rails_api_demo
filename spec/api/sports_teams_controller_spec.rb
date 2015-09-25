require 'rails_helper'

RSpec.describe SportsTeamsController, type: :controller do

  before do
    @request.host = 'api.example.com'
  end

 it 'returns a list of all teams' do
    get :index
    # check for success status code
    expect(response.status).to eq(200)
    # check for resource in body
    expect(response.body).to_not be_nil

  end

  # context 'filters' do

  #   let(:sports_team1){create(:sports_team, {trophies: 5})}
  #   let(:sports_team2){create(:sports_team, {trophies: 4})}
  #   let(:sports_team3){create(:sports_team, {trophies: 2})}

  #   it 'a list of teams by trophy count' do
  #     visit 'api.example.com/sports_teams?trophies=4'
  #     # check for success status code
  #     expect(response.status).to eq(200)

  #     teams = JSON.parse(response.body, symbolize_names: true)
  #     team_names = teams.collect{|team| team[:name]}

  #     # check for correct objects
  #     expect(team_names).to include('team3')
  #     expect(team_names).to_not include('team1')
  #   end

  #   it 'a list of teams by minimum trophy count' do
  #     visit 'api.example.com/sports_teams?minimum_trophies=4'
  #     # check for success status code
  #     expect(response.status).to eq(200)

  #     teams = JSON.parse(response.body, symbolize_names: true)
  #     team_names = teams.collect{|team| team[:name]}

  #     # check for correct objects
  #     expect(team_names).to include('team1','team2')
  #     expect(team_names).to_not include('team1')
  #   end

  # end


end
