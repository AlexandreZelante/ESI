class UsersController < ApplicationController
  before_action :set_users, only: [:show, :edit, :update, :destroy]
  def index
    @parameter = params[:search]
    @category = params[:category]

    sql = "lower(name) LIKE :search AND private = false"

    if @category === "Aluno" 
      sql = sql + " AND category = 'Aluno'"
    elsif @category === "Treinador" 
      sql = sql + " AND category = 'Treinador'"
    end

    @results = User.all.where(sql, search: "%#{@parameter}%")
  end

  def show
    @following = User.joins(
      User.arel_table.join(FollowedUser.arel_table).on(
        FollowedUser.arel_table[:user_id].eq(@user.id).and(
          FollowedUser.arel_table[:followed_id].eq(User.arel_table[:id])
        )
      ).join_sources
    )

    @following_number = 0

    @following.each do |f|
      @following_number = @following_number + 1
    end

    @followed = User.joins(
      User.arel_table.join(FollowedUser.arel_table).on(
        FollowedUser.arel_table[:followed_id].eq(@user.id).and(
          FollowedUser.arel_table[:user_id].eq(User.arel_table[:id])
        )
      ).join_sources
    )

    @followed_number = 0

    @followed.each do |f|
      @followed_number = @followed_number + 1
    end
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: "User was successfully destroyed."}
      format.json { head :no_content }
    end
  end

  def update
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end 

  def new
    @user = User.new
  end

  private
    def set_users
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :email, :email_confirmation, :cpf, :birth_date, :phone, :gender, :category, :private, :password, :password_confirmation)
    end
end
