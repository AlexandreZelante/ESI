class User < ApplicationRecord
	validates :email, confirmation: true
	validates :email_confirmation, presence: false
	validates :name, :email, :cpf, :birth_date, :phone, :gender, :password, presence: true
end