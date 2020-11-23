class FollowedUsersController < ApplicationController
  before_action :set_followed
  add_flash_types :info, :success, :warning, :danger

  def create
    if FollowedUser.create(followed: @followed, user: current_user)
      redirect_back fallback_location: users_path, success: 'Você seguiu esse usuário'
    else
      redirect_back fallback_location: users_path, danger: 'Algo deu errado'
    end
  end

  def destroy
    FollowedUser.where(followed_id: @followed.id, user_id: current_user.id).first.destroy
    redirect_back fallback_location: users_path, warning: 'Você deixou de seguir esse usuário'
  end

  private
    def set_followed
      @followed = User.find(params[:followed_id] || params[:id])
    end
end
