class User < ApplicationRecord
	validates :email, confirmation: true
	validates :name, :email, :email_confirmation, :cpf, :birth_date, :phone, :gender, :password, presence: true
end