class AddDescriptionToWorkouts < ActiveRecord::Migration[6.0]
  def change
    add_column :workouts, :description, :string
  end
end
