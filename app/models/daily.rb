# Class daily used to represent the daily ('dailies')
# Class attributes: 
# 'tipo' which defines the daily is in the morning or afternoon ('M' or 'T')
# 'Data' which defines the date of daily


class Daily < ActiveRecord::Base
	# Daily can have multiple answers
	has_many :replies
	# Daily belongs to a team
	belongs_to :team
end
