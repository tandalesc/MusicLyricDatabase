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
end