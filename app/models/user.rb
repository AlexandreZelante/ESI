class User < ActiveRecord::Base
	validates :email, confirmation: true
	validates :password, confirmation: true
	validates :cpf, :phone, numericality: { only_integer: true }
	validates :gender, presence: true
	validates :category, presence: true
	has_secure_password

    has_many :saved_workouts
	has_many :saved, through: :saved_workouts, source: :workout
    has_many :workout_comments
	has_many :followed_users
	has_many :followed, through: :followed_users, source: :user
	has_many :coach_id, class_name: 'CoachComment', foreign_key: 'coach'
	has_many :user_id, class_name: 'CoachComment', foreign_key: 'user_active'
end
