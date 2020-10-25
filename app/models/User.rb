class User < ApplicationRecord
	validates :email, confirmation: true
	validates :password, confirmation: true
	validates :cpf, :phone, numericality: { only_integer: true }
	validates :email_confirmation, presence: true
	validates :name, :email, :cpf, :birth_date, :phone, :gender, :password, presence: true
end