module Api
  class ScoresController < ApplicationController
    def index
      @score = Card.where(complete: true).count * 100
      render json: { score: @score }.to_json
    end
  end
end