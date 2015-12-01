class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.string :duration
      t.string :lyrics
      t.references :album
      t.references :producer
    end
  end
end
