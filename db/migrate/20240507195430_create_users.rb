class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :first_name, :null => false
      t.string :second_name
      t.string :last_name, :null => false
      t.date :date_of_birth, :null => false
      t.string :email, :null => false
      t.string :password_digest
      t.string :phone_number
      t.string :gender
      t.timestamps
    end
  end
end
