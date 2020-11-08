class WorkoutsController < ApplicationController
  before_action :set_workout, only: [:show, :edit, :update, :destroy]

  # GET /workouts
  def index
    @workouts = Workout.order(:id)
  end

  # GET /workouts/1
  def show
  end

  # GET /workouts/new
  def new
    @workout = Workout.new
    1.times{ @workout.days.build }
    1.times{ @workout.days[0].exercises.build }
  end

  # GET /workouts/1/edit
  def edit
  end

  # POST /workouts
  def create
    @workout = Workout.new(workout_params)

    if @workout.save
      redirect_to workout_path(@workout), success: 'Treino cadastrado com sucesso.'
    else
      render :new
    end
  end

  # PATCH/PUT /workouts/1
  def update
    if @workout.update(workout_params)
      redirect_to @workout, success: 'Treino atualizado com sucesso.'
    else
      render :edit
    end
  end

  # DELETE /workouts/1
  def destroy
    @workout.destroy
    redirect_to workout_path(@workout), warning: 'Treino apagado com sucesso.'
  end

  private
    def set_workout
      @workout = Workout.find(params[:id])
    end

    def workout_params
      params.require(:workout)
        .permit(:name, :coach, :description, days_attributes: [:id, :name, :exercises, :_destroy, exercises_attributes: [:id, :name, :sets, :repetitions, :rest, :_destroy] ])
    end
end
