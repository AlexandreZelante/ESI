class AddSavedWorkoutsCountToWorkouts < ActiveRecord::Migration[6.0]
  def change
    add_column :workouts, :saved_workouts_count, :integer
  end
end
