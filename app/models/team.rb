class Team < ActiveRecord::Base
	belongs_to :responsible, :class_name => "User"
	has_and_belongs_to_many :members, :class_name => "User", :foreign_key => "user_id", :join_table => "members_teams"
end
