class GenresController < ApplicationController

  def new
  end

  def create
    @genre = Genre.create(params.require(:genre).permit(:name))
    redirect_to genre_path(@genre)
  end

  def show
    @genre = Genre.find(params[:id])
  end

  def edit
    @genre = Genre.find(params[:id])
  end

  def update
    @genre = Genre.find(params[:id]).tap{|g| g.update(params.require(:genre).permit(:name))}
    redirect_to genre_path(@genre)
  end

end
