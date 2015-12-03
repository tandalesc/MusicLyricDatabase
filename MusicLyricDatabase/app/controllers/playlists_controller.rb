class PlaylistsController < ApplicationController
	def new
		@playlist = Playlist.new
	end
	def create
		if(logged_in?)
			user_id = current_user.id
			name = params[:name]
			query = "INSERT INTO playlists (name, user_id) VALUES ('"+name+"', '#{user_id}')"
			ActiveRecord::Base.connection.execute(query)
			redirect_to("/users/#{user_id}")
		else
			redirect_to("/")
		end
	end
	def show
		playlist = Playlist.find_by_sql("SELECT * FROM playlists WHERE id=#{params[:id]}")
		@playlist = playlist[0]
		@songs = Song.find_by_sql("SELECT * FROM songs INNER JOIN playlists_songs ON songs.id = playlists_songs.song_id WHERE playlists_songs.playlist_id=#{@playlist.id}")
	end
	def destroy
		playlist_id = params[:playlist_id]
		query = "DELETE FROM playlists WHERE id=#{playlist_id}"
		ActiveRecord::Base.connection.execute(query)
		redirect_to("/users/#{params[:id]}")
	end
end