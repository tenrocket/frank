class Challenge < ActiveRecord::Base
	belongs_to :challenger

	#validations
		validates :challenger_id
	  validates :title, presence :true
    validates :description, presence :true
    validates :start_date, presence true
    validates :end_date, presence true
    validates :challenger_id, presence true
end
