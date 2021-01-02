class SongsController < ApplicationController

  def new
  end

  def create
    @song = Song.create(params.require(:song).permit(:name, :artist_id, :genre_id))
    redirect_to song_path(@song)
  end

  def show
    @song = Song.find(params[:id])
  end

  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id]).tap{|s| s.update(params.require(:song).permit(:name, :artist_id, :genre_id))}
    redirect_to song_path(@song)
  end

  def index
    @songs = Song.all
  end

end
