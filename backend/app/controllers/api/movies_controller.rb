module Api
  class MoviesController < ApplicationController

    def index
      @movies = Movie.all
      render json: @movies, each_serializer: MoviesSerializer
    end

    def show
      @movie = Movie.find(params[:id])
      render json: @movie, serializer: MoviesSerializer
    end

    def create
      @movie = Movie.create(movie_params)
      render json: @movie, serializer: MoviesSerializer
    end

    def update
      @movie = Movie.find(params[:id])
      render json: @movie.update_attribtues(movie_params), serializer: MoviesSerializer
    end

    def destroy
      @movie = Movie.find(params[:id])
      if @movie.destroy
        render json: "Success"
      else
        render json: @movie.errors
      end
    end

private

    def movie_params
      params.require(:movie).permit!
    end

  end
end