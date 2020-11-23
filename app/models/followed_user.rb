class FollowedUser < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: :user_id
  belongs_to :followed, class_name: 'User', foreign_key: :followed_id

  validates_uniqueness_of :followed_id, scope: :user_id
end
