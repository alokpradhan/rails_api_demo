module API

  class SportsTeamsController < ApplicationController

    def index

      @sports_teams = SportsTeam.all

      if trophy_count = params[:trophies]
        @sports_teams = @sports_teams.where(trophies: trophy_count)
      end

      if trophy_count = params[:minimum_trophies]
        @sports_teams = @sports_teams.where('trophies >=?', trophy_count)
      end

      if team_name = params[:team]
        @sports_teams = @sports_teams.where(name: team_name)
      end

      if city = params[:city]
        result = []
        @sports_teams.each do |team|
          result.push(team) if team.address.city == city
        end
        @sports_teams = result
      end

      if state = params[:state]
        result = []
        @sports_teams.each do |team|
          result.push(team) if team.address.state == state
        end
        @sports_teams = result
      end

      if params[:fans]
        result = {}
        @sports_teams.each do |team|
          result[team.name] = team.users.count
        end
        @sports_teams = result
      end

      if capacity = params[:stadium_capacity]
        result = {}
        @sports_teams = @sports_teams.where('stadium_size >=?', capacity)
      end

      render json: @sports_teams, status: 200

    end

    def show

      @sports_team = SportsTeam.find(params[:id])
      render json: @sports_team, status: 200

    end

  end

end
