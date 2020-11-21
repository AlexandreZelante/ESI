class User < ActiveRecord::Base
  
    before_create :create_confirmation_token
  
	  validates :email, confirmation: true
	  validates :password, confirmation: true
	  validates :cpf, :phone, numericality: { only_integer: true }
		validates :gender, presence: true
		validates :category, presence: true
		has_secure_password

    has_many :saved_workouts
		has_many :saved, through: :saved_workouts, source: :workout

	  def email_activate
	      self.email_confirmed = true
	      self.confirm_token = nil
	      save!(:validate => false)
	  end

	  private
	  def create_confirmation_token
        if confirm_token.nil?
            self.confirm_token = SecureRandom.urlsafe_base64.to_s
        end
    end
end