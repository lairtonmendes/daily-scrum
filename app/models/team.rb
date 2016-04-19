class Team < ActiveRecord::Base
	# Team belongs responsible where reponsible  is a User
	belongs_to :responsible, :class_name => "User"
	# Team has multiple members and members can belong to multiple teams, where member is a User
	has_and_belongs_to_many :members, :class_name => "User",  :join_table => "members_teams"
	# Team belongs replies
	has_many :replies
	
	accepts_nested_attributes_for :members
	accepts_nested_attributes_for :responsible
	validates_presence_of :nome, :responsible_id

end
