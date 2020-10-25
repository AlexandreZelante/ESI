class User < ApplicationRecord
	#validates :email, :password, confirmation: true
	validates :name, :email, :cpf, :birth_date, :phone, :gender, :password, presence: true
end