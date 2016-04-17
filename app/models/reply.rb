class Reply < ActiveRecord::Base
	belongs_to :daily
	belongs_to :user
end
