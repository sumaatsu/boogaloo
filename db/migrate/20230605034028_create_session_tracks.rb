class CreateSessionTracks < ActiveRecord::Migration[7.0]
  def change
    create_table :session_tracks do |t|
      t.references :track, null: false, foreign_key: true
      t.references :session, null: false, foreign_key: true

      t.timestamps
    end
  end
end
