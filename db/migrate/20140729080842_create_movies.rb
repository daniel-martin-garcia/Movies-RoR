class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :poster
      t.text :plot
      t.integer :year
      t.timestamps
    end
  end
end
