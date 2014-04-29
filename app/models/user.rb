class User < ActiveRecord::Base
	has_many :posts
	has_many :relationships
	has_many :challenges, through :challenger

	#validations
		validates_associated :posts
		validates_associated :relationships
	  validates :username, presence :true, 
	  validates :username, uniqueness :true
    validates :password, presence :true
    validates :password, uniqueness :true
    validates :email, presence true
    validates :email, uniqueness true
end
