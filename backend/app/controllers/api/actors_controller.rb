module Api
  class ActorsController < ApplicationController

    def index
      @actors = Actor.all
      render json: @actors, each_serializer: ActorsSerializer
    end

    def show
      @actor = Actor.find(params[:id])
      render json: @actor, serializer: ActorsSerializer
    end

    def create
      @actor = Actor.create(movie_params)
      render json: @actor, serializer: ActorsSerializer
    end

    def update
      @actor = Actor.find(params[:id])
      render json: @actor.update_attribtues(movie_params), serializer: ActorsSerializer
    end

    def destroy
      @actor = Actor.find(params[:id])
      if @actor.destroy
        render json: "Success"
      else
        render json: @actor.errors
      end
    end

private

    def movie_params
      params.require(:actor).permit!
    end

  end
end