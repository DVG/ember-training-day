module Api
  class ScoresController < ApplicationController
    def index
      @score = Card.where(complete: true).sum(:points)
      render json: { score: @score }.to_json
    end
  end
end