class CreateMembersTeams < ActiveRecord::Migration
  def change
    create_table :members_teams do |t|
      t.integer :member_id
      t.integer :team_id
    end
  end
end
