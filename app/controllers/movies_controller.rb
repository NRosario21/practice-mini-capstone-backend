class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    render :index
  end

  def create
    @movie = Movie.create(
      name: params[:name],
      category_id: params[:category_id],
      image_url: params[:image_url],
      year: params[:year],
    )
    render :show
  end

  def show
    @movie = Movie.find_by(id: params[:id])
    render :show
  end

  def update
    @movie = Movie.find_by(id: params[:id])
    @movie.update(
      name: params[:name] || @movie.name,
      category: params[:category] || @movie.category,
      year: params[:year] || @movie.year,
    )
    render :show
  end

  def destroy
    @movie = Movie.find_by(id: params[:id])
    @movie.destroy
    render json: { message: "Movie destroyed successfully" }
  end
end
