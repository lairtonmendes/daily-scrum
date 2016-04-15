class RemoveMemberIdToMembersTeams < ActiveRecord::Migration
  def change
    remove_column :members_teams, :member_id, :integer
  end
end
