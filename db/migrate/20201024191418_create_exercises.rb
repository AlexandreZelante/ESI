class CreateExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :sets
      t.string :repetitions
      t.string :rest
      t.belongs_to :day, null: false, foreign_key: true
    end
  end
end
