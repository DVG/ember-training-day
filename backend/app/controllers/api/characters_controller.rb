module Api
  class CharactersController < ApplicationController

    def index
      @characters = Character.all
      render json: @characters, each_serializer: CharactersSerializer
    end

    def show
      @character = Character.find(params[:id])
      render json: @character, serializer: CharactersSerializer
    end

    def create
      @character = Character.create(movie_params)
      render json: @character, serializer: CharactersSerializer
    end

    def update
      @character = Character.find(params[:id])
      render json: @character.update_attribtues(movie_params), serializer: CharactersSerializer
    end

    def destroy
      @character = Character.find(params[:id])
      if @character.destroy
        render json: "Success"
      else
        render json: @character.errors
      end
    end

private

    def movie_params
      params.require(:character).permit!
    end

  end
end