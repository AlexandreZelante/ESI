class User < ApplicationRecord
	validates :email, confirmation: 
	validates :name, :email, :email_confirmation, :cpf, :birth_date, :phone, :gender, :password, presence: true
end