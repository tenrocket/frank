class Post < ActiveRecord::Base
	belongs_to :user
	belongs_to :challenger

	#validations
    # validates :description, presence :true
end
