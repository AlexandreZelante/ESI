class SessionsController < ApplicationController
before_action :block_access, except: [:destroy]
    def create
        if params.key?("session")
            @user = User.find_by(email: params[:session][:email].downcase)
            if @user && @user.authenticate(params[:session][:password])
                sign_in @user
                redirect_to @user
            else
                render 'new'
            end
        else
            render 'new'
        end 
    end

    def new
        
    end

    def destroy
        sign_out
        redirect_to root_url
    end
end
