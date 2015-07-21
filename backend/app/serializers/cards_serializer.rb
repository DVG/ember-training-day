class CardsSerializer < ActiveModel::Serializer
  attributes :id, :title, :difficulty, :clue_1, :clue_2, :clue_3, :comments, :description, :complete
end