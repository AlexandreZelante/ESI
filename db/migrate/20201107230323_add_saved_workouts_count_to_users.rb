class AddSavedWorkoutsCountToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :saved_workouts_count, :integer
  end
end
