class Workout < ApplicationRecord
  has_many :days, inverse_of: :workout, dependent: :destroy
  accepts_nested_attributes_for :days, reject_if: :all_blank, allow_destroy: true

  validates :name, presence: true
  validates :coach, presence: true

  def self.search(search)
    if search 
      where(["name ILIKE ?","%#{search}%"])
    else
      all
    end
  end
end
