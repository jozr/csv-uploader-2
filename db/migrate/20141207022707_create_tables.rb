class CreateTables < ActiveRecord::Migration
  def change
  	create_table :artists do |t|
  		t.string :name

  		t.timestamps
  	end

  	create_table :albums do |t|
  		t.integer :artist_id
  		t.string :name
  		t.string :release_year
  		t.integer :rating

  		t.timestamps
  	end
  end
end
