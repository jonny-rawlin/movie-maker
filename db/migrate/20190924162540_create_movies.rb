class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
      t.string :genre
      t.string :release_date
      t.integer :director_id
    end 
  end
end
