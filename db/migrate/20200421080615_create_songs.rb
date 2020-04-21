class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :title, null: false
      t.integer :easy, null: false
      t.integer :normal, null: false
      t.integer :hard, null: false
      t.integer :expert, null: false
      t.integer :special
      t.integer :band_id, null: false
      t.integer :style, null: false
      t.date :delivery, null: false
      t.timestamps
    end
  end
end
