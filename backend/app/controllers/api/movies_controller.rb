module Api
  class MoviesController < ApplicationController

    def index
      if pagination_params_present?
        @movies = Movie.paginate(page: params[:p] || 1, per_page: params[:per_page] || 5)
        @meta = {total_pages: @movies.total_pages, per_page: @movies.per_page, p: @movies.current_page }
      else
        @movies = Movie.all
        @meta = {}
      end
      render json: @movies, each_serializer: MoviesSerializer, meta: @meta
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
        render json: {}
      else
        render json: @movie.errors
      end
    end

private

    def movie_params
      params.require(:movie).permit!
    end

    def pagination_params_present?
      params[:p].present? || params[:per_page].present?
    end

  end
end