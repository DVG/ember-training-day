class CardsSerializer < ActiveModel::Serializer
  attributes :id, :title, :difficulty, :comments, :description, :complete

  has_many :clues
end