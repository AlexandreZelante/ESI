class CreateWorkoutComments < ActiveRecord::Migration[6.0]
  def change
    create_table :workout_comments do |t|
      t.string :text
      t.references :workout, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
