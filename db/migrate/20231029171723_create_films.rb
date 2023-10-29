class CreateFilms < ActiveRecord::Migration[7.1]
  def change
    create_table :films do |t|
      t.string :title
      t.integer :release_year
      t.string :synopsis
      t.string :origin_country
      t.integer :duration
      t.references :director, null: false, foreign_key: true, default: 0
      t.references :genre, null: false, foreign_key: true, default: 0

      t.timestamps
    end
  end
end
