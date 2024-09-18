class FavoritesController < ApplicationController
  def create
    movie = Movie.find_or_create_by(
      name: params[:name],
      image_url: params[:image_url],
      category_id: params[:category_id],
      year: params[:year],

    )
    pp movie
    @favorite = Favorite.find_or_create_by(
      user_id: current_user.id,
      movie_id: movie.id,
    )
    pp @favorite
    render :show
  end

  def destroy
    @favorite = Favorite.find(params[:id])
    @favorite.destroy
    render json: { message: "Success" }
  end
end
