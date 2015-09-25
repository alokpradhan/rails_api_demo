# module API

  class SportsTeamsController < ApplicationController

    def index

      @sports_teams = SportsTeam.all

      if trophy_count = params[:trophies]
        @sports_teams = @sports_teams.where(trophies: trophy_count)
      end

      if trophy_count = params[:minimum_trophies]
        @sports_teams = @sports_teams.where('trophies >=?', trophy_count)
      end

      render json: @sports_teams, status: 200

    end

    def show

      @sports_team = SportsTeam.find(params[:id])
      render json: @sports_team, status: 200

    end

  end

# end
