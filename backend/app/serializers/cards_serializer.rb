class CardsSerializer < ActiveModel::Serializer
  attributes :id, :title, :difficulty, :comments, :description, :complete, :points

  has_many :clues

  def points
    object.complete? ? 100 : 0
  end
end