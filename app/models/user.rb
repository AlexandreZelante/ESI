class User < ActiveRecord::Base
	  validates :email, confirmation: true
	  validates :password, confirmation: true
	  validates :cpf, :phone, numericality: { only_integer: true }
		validates :gender, presence: true
		validates :category, presence: true
		has_secure_password

    has_many :saved_workouts
		has_many :saved, through: :saved_workouts, source: :workout

		has_many :followed_users
		has_many :followed, through: :followed_users, source: :user
end
