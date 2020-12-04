class CoachCommentsController < ApplicationController
    before_action :set_coach_comment, only: [:show, :edit, :update, :destroy]

    def create
        puts(user_comment_params[:coach_id])
        puts(user_comment_params[:text])
        puts(session[:user_id])

        @coach_comment = CoachComment.new(text: user_comment_params[:text], coach_id: user_comment_params[:coach_id], user_active_id: session[:user_id])

        

        if @coach_comment.save
            @user = User.find(user_comment_params[:coach_id])
            redirect_to @user, success: 'Comentário adicionado com sucesso'
        end
    end

    private
        def set_user_comment
            @coach_comment = CoachComment.find(coach_id: user_comment_params[:coach_id])
        end

        def user_comment_params
            params.require(:coach_comment)
                .permit(:text, :coach_id)
        end
end
