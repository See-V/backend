class Profil < ActiveRecord::Base
	has_many :educations
	has_many :skills
end
