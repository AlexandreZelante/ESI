class WorkoutCommentsController < ApplicationController
  before_action :set_workout_comment, only: [:show, :edit, :update, :destroy]

  def create
    @workout_comment = WorkoutComment.new(text: workout_comment_params[:text], workout_id: workout_comment_params[:workout_id], user_id: session[:user_id])

    if @workout_comment.save
      @workout_comment = WorkoutComment.find(workout_comment_params[:workout_id])
      redirect_to @workout_comment, success: 'Comentário adicionado com sucesso'
    end
  end

  # PATCH/PUT /workouts/1
  def update
    if @workout_comment.update(workout_comment_params)
      redirect_to @workout_comment, success: 'Comentário atualizado com sucesso.'
    else
      render :edit
    end
  end

  def edit
  end

  private
    def set_workout_comment
      @workout_comment = WorkoutComment.find(params[:id])
    end

    def workout_comment_params
      params.require(:workout_comment)
        .permit(:text, :workout_id)
    end
end
