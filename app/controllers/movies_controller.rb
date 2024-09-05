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
end
