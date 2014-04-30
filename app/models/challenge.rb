class Challenge < ActiveRecord::Base
	belongs_to :challenger
	has_many :posts
	validates :title, presence: true

	scope :ending_soon, -> {where('end_date > ? AND end_date  < ? ' , Date.today , 3.days.from_now)}

	def self.ending_soon
		where('end_date > ? AND end_date  < ? ' , Date.today , 3.days.from_now)
	end

	# #validations
	# 	validates :challenger_id
	#   validates :title, presence :true
 #    validates :description, presence :true
 #    validates :start_date, presence true
 #    validates :end_date, presence true
 #    validates :challenger_id, presence true
end
