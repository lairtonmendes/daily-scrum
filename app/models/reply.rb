# Reply save replies of the 'dailies' keep only replies the titles of the questions are handled by the class Question
class Reply < ActiveRecord::Base
	# Reply belongs to a daily
	belongs_to :daily
	# Reply belongs to a user
	belongs_to :user
end
