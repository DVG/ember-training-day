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
      @movie = Movie.new(movie_params)
      if @movie.save
        render json: @movie, serializer: MoviesSerializer
      else
        render json: { errors: @movie.errors }, status: 422
      end
    end

    def update
      @movie = Movie.find(params[:id])
      if @movie.update_attributes(movie_params)
        render json: @movie, serializer: MoviesSerializer
      else
        render json: { errors: @movie.errors }, status: 422
      end
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