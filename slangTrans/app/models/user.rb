class User < ApplicationRecord
	has_many :slangs
	has_secure_password
	validates :username, presence: true, uniqueness: true
	validates :name, presence: true
end
