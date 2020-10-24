class User < ApplicationRecord
	validates :email, :password, confirmation: true
	validates :name, :email, :email_confirmation, :cpf, :birth_date, :phone, :gender, :password, :password_confirmation, presence: true
end