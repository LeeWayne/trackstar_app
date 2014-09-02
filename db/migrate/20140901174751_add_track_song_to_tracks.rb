class AddTrackSongToTracks < ActiveRecord::Migration
  def change
    add_column :tracks, :track_song, :string
  end
end
