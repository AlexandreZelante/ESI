
class User < ActiveRecord::Base
	  validates :email, confirmation: true
	  validates :password, confirmation: true
	  validates :cpf, :phone, numericality: { only_integer: true }
	  validates :gender, presence: true
    has_secure_password
end