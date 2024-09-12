class ApiMovieController < ApplicationController
  def index
    response = HTTP
      .get("http://www.omdbapi.com/?apikey=#{ENV["MOVIES_API_KEY"]}&s=#{params[:search_terms]}")

    data = response.parse
    render json: data["Search"]
  end

  # def index
  #   response = HTTP
  #     .get("https://api.watchmode.com/v1/autocomplete-search/?apiKey#{ENV["MOVIES_API_KEY2"]}&s=#{params[:search_terms]}")

  #   data = response.parse
  #   render json: data["Search"]
  # end
end
