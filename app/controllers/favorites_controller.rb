class FavoritesController < ApplicationController
  def create
    @movie = Movie.find(params[:movie_id])
    current_user.favorites.create(movie: @movie)
  end

  def destroy
    @movie = Movie.find(params[:movie_id])
    current_user.favorites.create(movie: @movie).destroy
  end
end
