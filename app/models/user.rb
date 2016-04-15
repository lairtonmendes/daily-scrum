class User < ActiveRecord::Base
	has_many :ledteams, :class_name => 'Team', :foreign_key => 'responsible_id'
	has_and_belongs_to_many :teams, :join_table => "members_teams"

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
