class AddResponsibleIdToTeams < ActiveRecord::Migration
  def change
    add_column :teams, :responsible_id, :integer
  end
end
