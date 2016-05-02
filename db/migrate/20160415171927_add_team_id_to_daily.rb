class AddTeamIdToDaily < ActiveRecord::Migration
  def change
    add_column :dailies, :team_id, :integer
  end
end
