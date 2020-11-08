class SavedWorkoutsController < ApplicationController
  before_action :set_workout
  add_flash_types :info, :success, :warning, :danger

  def create
    if SavedWorkout.create(workout: @workout, user: current_user)
      redirect_back fallback_location: workouts_path, success: 'O treino foi adicionado à lista de favoritos'
    else
      redirect_back fallback_location: workouts_path, danger: 'Algo deu errado'
    end
  end

  def destroy
    SavedWorkout.where(workout_id: @workout.id, user_id: current_user.id).first.destroy
    redirect_back fallback_location: workouts_path, warning: 'O treino foi removido da lista de favoritos'
  end

  private
    def set_workout
      @workout = Workout.find(params[:workout_id] || params[:id])
    end
end
