class SongsController < ApplicationController
  
  def create
    @song = Song.new(title: "American Idiot", artist: "Green Day", length: 4)
    @song.save
    render template: "songs/show"
  end

end
