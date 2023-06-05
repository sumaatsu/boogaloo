class CreateSessions < ActiveRecord::Migration[7.0]
  def change
    create_table :sessions do |t|
<<<<<<< HEAD
      t.text :participants, array: true
=======
>>>>>>> e85eceeca20021ea9c202b798953fa548338aa1a
      t.references :karaoke, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
