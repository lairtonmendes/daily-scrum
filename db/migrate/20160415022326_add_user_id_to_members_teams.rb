class AddUserIdToMembersTeams < ActiveRecord::Migration
  def change
    add_column :members_teams, :user_id, :integer
  end
end
