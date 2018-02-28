class Student < ApplicationRecord
	has_many :admins
	has_many :interviews
end
