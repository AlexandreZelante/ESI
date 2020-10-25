class CreateExercises < ActiveRecord::Migration[6.0]
  def change
    create_table :exercises do |t|
      t.string :name, null: false
      t.string :sets, null: false
      t.string :repetitions, null: false
      t.string :rest, null: false
      t.belongs_to :day, null: false, foreign_key: true
    end
  end
end
