class Challenger < ActiveRecord::Base
	has_many :challenges
	has_many :posts
	has_many :relationships

	#validations
	validates_associated :challenges
	validates_associated :posts
	validates_associated :relationships
	validates :username, presence :true
	validates :username, uniqueness :true
  validates :password, presence :true
  validates :password, uniqueness :true
  validates :email, presence :true
  validates :email, uniqueness :true
end
