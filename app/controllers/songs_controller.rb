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
    render json: {mess: "hello there"}
  end
  
  def show
    render json: {mess: "hello there"}
    
  end
end
