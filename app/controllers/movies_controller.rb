class MoviesController < ApplicationController
  def index
    @movies = Movie.all
    render :index
  end

  def create
    @movie = Movie.create(
      name: params[:name],
      category: params[:category],
      year: params[:year],
    )
    render :show
  end

  def show
    @movie = Movie.find_by(id: params[:id])
    render :show
  end
end
