class User < ApplicationRecord
	validates :email, confirmation: { case_sensitive: false }
	validates :email_confirmation, presence: true
	validates :name, :cpf, :birth_date, :phone, :gender, :password, presence: true
end