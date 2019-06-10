class CreatePages < ActiveRecord::Migration[5.2]
  def up
  	unless table_exists?(:pages)
  		create_table :pages do |t|
      		t.string :title
      		t.text :content
      		t.boolean :allow_unauth

      		t.timestamps
    	end
    	add_index :pages, %i(title), unique: true
  	end
  end

  def down
  	drop_table(:pages, if_exists: true)
  end
end
