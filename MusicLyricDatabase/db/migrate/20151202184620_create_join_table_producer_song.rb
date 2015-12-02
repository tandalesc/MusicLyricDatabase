class CreateJoinTableProducerSong < ActiveRecord::Migration
  def change
    create_join_table :producers, :songs do |t|
      # t.index [:producer_id, :song_id]
      # t.index [:song_id, :producer_id]
    end
  end
end
