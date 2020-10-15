class WorkoutsController < ApplicationController
  before_action :set_workout, only: [:show]

  def index
    @workouts = Workout.all
  end

  def new
    @workout = Workout.new
    @days = Day.all.pluck(:name, :id)
    1.times{ @workout.days.build }
  end

  def edit
    @days = Day.all.pluck(:name, :id)
  end

  def create
    @workout = Workout.new(workout_params)
    if @workout.save
      redirect_to workout_path(@workout), notice: 'Treino cadastrado com sucesso.'
    else
      render :new
    end
  end

  def show
  end

  private
    def set_workout
      @workout = Workout.find(params[:id])
    end

    def workout_params
      params.require(:workout)
        .permit(:name, :coach, days_attributes: [:id, :workout_id, :name, :exercises, :_destroy ])
    end
end
