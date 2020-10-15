class Workout < ApplicationRecord
  has_many :days
  accepts_nested_attributes_for :days
end
