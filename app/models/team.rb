class Team < ActiveRecord::Base
	belongs_to :responsible, :class_name => "User"
	has_and_belongs_to_many :members, :class_name => "User",  :join_table => "members_teams"
	has_many :replies
	accepts_nested_attributes_for :members
	accepts_nested_attributes_for :responsible
	validates_presence_of :nome, :responsible_id

end
