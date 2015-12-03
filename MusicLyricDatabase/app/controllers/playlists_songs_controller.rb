class PlaylistsSongsController < ApplicationController
	def index
		redirect_to("/")
	end
	def create
		playlist_id = params[:playlist_id]
		song_id = params[:song_id]
		query = "INSERT INTO playlists_songs (playlist_id, song_id) VALUES ('#{playlist_id}', '#{song_id}')"
		ActiveRecord::Base.connection.execute(query)
		redirect_to("/songs/#{song_id}")
	end
	def destroy
		playlist_id = params[:playlist_id]
		song_id = params[:song_id]
		query = "DELETE FROM playlists_songs WHERE playlist_id=#{playlist_id} AND song_id=#{song_id}"
		ActiveRecord::Base.connection.execute(query)
		redirect_to("/playlists/#{playlist_id}")
	end
end