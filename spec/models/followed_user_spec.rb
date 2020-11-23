require 'rails_helper'

RSpec.describe FollowedUser, type: :model do
  it "is valid with valid attributes" do
    user = User.create(
      name: 'Usuário'
    )
    followed = User.create(
      name: 'Seguido'
    )

    expect(FollowedUser.new(
      user: user,
      followed: followed
    )).to be_valid
  end

  it "is not valid without a user" do
    followed = User.create(
      name: 'Seguido'
    )

    withoutUser = FollowedUser.new(
      followed: followed
    )

    expect(withoutUser).to_not be_valid
  end

  it "is not valid without a followed" do
    user = User.create(
      name: 'Usuário'
    )

    withoutFollowed = FollowedUser.new(
      user: user
    )

    expect(withoutFollowed).to_not be_valid
  end

  it "is not valid without both users" do
    withoutBoth = FollowedUser.new

    expect(withoutBoth).to_not be_valid
  end
end
