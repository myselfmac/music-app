class User < ApplicationRecord
	has_many :histories, dependent: :delete_all

	validates :username, presence: true, uniqueness: true, length: { minimum: 3, maximum: 15 }, case_sensitive: false
	validates :pass, presence: true, length: { minimum: 4, maximum: 15 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, uniqueness: true, case_sensitive: false, format: {with: VALID_EMAIL_REGEX}
end