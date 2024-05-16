class SongsController < ApplicationController
  
  def create
    @song = Song.new(
      title: params[:title], 
      artist: params[:artist], 
      length: params[:length]
      )
    @song.save
    render template: "songs/show"
  end

end
