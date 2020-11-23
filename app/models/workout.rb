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

  has_many :saved_workouts
  has_many :saved_by, through: :saved_workouts, source: :user

  has_many :workout_comments, inverse_of: :workout, dependent: :destroy
  accepts_nested_attributes_for :workout_comments, reject_if: :all_blank, allow_destroy: true
end
