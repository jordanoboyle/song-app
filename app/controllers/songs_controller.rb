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

  def index
    @songs = Song.all 
    render template: "songs/index"
  end
  
  def show
    @song = Song.find_by(id: params[:id])
    render template: "songs/show"
  end
end
