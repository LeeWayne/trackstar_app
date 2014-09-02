class Track < ActiveRecord::Base
  attr_accessible :description, :file_name, :name, :user_id, :track_song
  mount_uploader :track_song, TrackSongUploader

  belongs_to :user
  acts_as_commentable

end
