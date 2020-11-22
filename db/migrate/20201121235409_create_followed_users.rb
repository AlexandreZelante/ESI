class CreateFollowedUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :followed_users do |t|
      t.references :user, null: false
      t.references :followed, null: false

      t.timestamps
    end
  end
end
