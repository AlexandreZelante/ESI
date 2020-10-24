class Day < ApplicationRecord
  belongs_to :workout

  has_many :exercises, inverse_of: :day, dependent: :destroy
  accepts_nested_attributes_for :exercises, reject_if: :all_blank, allow_destroy: true
end
