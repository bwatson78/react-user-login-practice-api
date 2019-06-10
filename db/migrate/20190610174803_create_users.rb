class CreateUsers < ActiveRecord::Migration[5.2]
  def up 
    create_table :users do |t|
      t.string :email
      t.string :password_digest

      t.timestamps
    end
    add_index :users, %i(email), unique: true
  end

  def down
  	drop_table :users, if_exists: true
  end
end
