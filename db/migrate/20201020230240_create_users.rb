class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :cpf
      t.date :birth_date
      t.string :phone
      t.string :gender
      t.string :password
      t.string : categoria

      t.timestamps
    end
  end
end
