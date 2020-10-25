class User < ApplicationRecord
	validates :email, confirmation: { case_sensitive: false }
	validates :name, :email_confirmation, :cpf, :birth_date, :phone, :gender, :password, presence: true
end