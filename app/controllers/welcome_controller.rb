class WelcomeController < ApplicationController
	def index
		@todays_users = User.todays_date
		@challenge = Challenge.ending_soon
		end
end
