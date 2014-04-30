class User < ActiveRecord::Base
	has_many :posts
	has_many :relationships
	
	

	def self.todays_date
		where('created_at > ?' , Date.today)
	end
	

	
end
