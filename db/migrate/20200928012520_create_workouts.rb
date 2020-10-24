class CreateWorkouts < ActiveRecord::Migration[6.0]
  def change
    create_table :workouts do |t|
      t.string :name, null: false
      t.string :coach, null: false

      t.timestamps
    end
  end
end
