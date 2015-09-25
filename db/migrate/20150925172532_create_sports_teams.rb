class CreateSportsTeams < ActiveRecord::Migration
  def change
    create_table :sports_teams do |t|
      t.string :name
      t.integer :address_id
      t.integer :stadium_size
      t.integer :trophies

      t.timestamps null: false
    end
  end
end
