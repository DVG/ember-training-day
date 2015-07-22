class CardsSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :title, :difficulty, :comments, :description, :complete, :points

  has_many :clues, serializer: CluesSerializer
end