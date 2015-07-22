class Api::CardsController < ApplicationController

    def index
      @cards = Card.all
      render json: @cards, each_serializer: CardsSerializer
    end

    def show
      @card = Card.find(params[:id])
      render json: @card, serializer: CardsSerializer
    end

    def create
      @card = Card.create(card_params)
      render json: @card, serializer: CardsSerializer
    end

    def update
      @card = Card.find(params[:id])
      if @card.update_attributes(card_params)
        render json: @card, serializer: CardsSerializer
      else
        render json: @card.errors, status: 422
      end
    end

    def destroy
      @card = Card.find(params[:id])
      if @card.destroy
        render json: "Success"
      else
        render json: @card.errors
      end
    end

private

    def card_params
      params.require(:card).permit!
    end

end