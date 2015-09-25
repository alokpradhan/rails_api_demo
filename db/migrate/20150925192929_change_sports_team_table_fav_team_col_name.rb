class ChangeSportsTeamTableFavTeamColName < ActiveRecord::Migration
  def change
    rename_column :users, :fav_sports_team_id, :sports_team_id
  end
end
