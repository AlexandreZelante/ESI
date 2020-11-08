class User < ActiveRecord::Base
	  validates :email, confirmation: true
	  validates :password, confirmation: true
	  validates :cpf, :phone, numericality: { only_integer: true }
		validates :gender, presence: true
		has_secure_password

    has_many :saved_workouts
		has_many :saved, through: :saved_workouts, source: :workout
end
