class CoachComment < ApplicationRecord
  belongs_to :coach, class_name: 'User'
  belongs_to :user_active, class_name: 'User'
end
