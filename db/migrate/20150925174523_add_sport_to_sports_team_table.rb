class AddSportToSportsTeamTable < ActiveRecord::Migration
  def change
    add_column :sports_teams, :sport, :string
  end
end
