class CreateMovies < ActiveRecord::Migration[7.1]
  def change
    create_table :movies do |t|
      t.string :name
      t.string :image_url
      t.text :description
      t.integer :category_id
      t.integer :year

      t.timestamps
    end
  end
end
