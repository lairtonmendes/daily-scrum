class Daily < ActiveRecord::Base
	has_many :replies
	belongs_to :team
end
