class CreateDays < ActiveRecord::Migration[6.0]
  def change
    create_table :days do |t|
      t.string :name, null: false
      t.belongs_to :workout, null: false, foreign_key: true
    end
  end
end
