class CreateTracks < ActiveRecord::Migration[7.0]
  def change
    create_table :tracks do |t|
      t.string :title
      t.string :artist
      t.string :album
      t.string :genre
      t.string :keyword

      t.timestamps
    end
  end
end
