class Relationships < ActiveRecord::Base
	belongs_to :user
	belongs_to :challenger

	#validations
    validates :user_id, presence :true
    validates :challenger_id, presence :true
end
