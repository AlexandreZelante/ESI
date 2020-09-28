class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.string :name
      t.string :coach
      t.jsonb :days

      t.timestamps
    end
  end
end
