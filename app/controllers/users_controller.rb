class UsersController < ApplicationController
  before_action :set_users, only: [:show, :edit, :update, :destroy]
  def index
    @parameter = params[:search]
    @results = User.all.where("lower(name) LIKE :search", search: "%#{@parameter}%")
  end

  def show
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
        UserMailer.registration_confirmation(@user).deliver
        format.html { redirect_to root_path, notice: 'Confirme seu email antes de acessar' }
        #format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end 

  def confirm_email
    user = User.find_by_confirm_token(params[:id])
    if user
      user.email_activate
      flash[:success] = "Email confirmado com sucesso!"
      redirect_to root_path
      #format.html { redirect_to root_path, notice: 'Email confirmado com sucesso!' }
    else
      flash[:error] = "Falha na confirmação! Usuário não existe!"
      redirect_to root_path
      #format.html { redirect_to root_path, notice: 'Falha na confirmação! Usuário não existe!' }
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
      params.require(:user).permit(:confirm_token, :name, :email, :email_confirmation, :cpf, :birth_date, :phone, :gender, :category, :password, :password_confirmation)
    end
end
