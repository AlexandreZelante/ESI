class CreateCoachComments < ActiveRecord::Migration[6.0]
  def change
    create_table :coach_comments do |t|
      t.string :text
      t.references :coach, null: false, foreign_key: { to_table: :users }
      t.references :user_active, null: false, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end
