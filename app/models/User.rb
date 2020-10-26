class User < ApplicationRecord
	validates :email, confirmation: true
	validates :password, confirmation: true
	#validates :cpf, :phone, numericality: { only_integer: true }
	validates :gender, presence: true
end