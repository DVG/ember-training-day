class AppearancesSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id

  has_one :movie, serializer: MoviesSerializer
  has_one :character, serializer: CharactersSerializer
  has_one :actor, serializer: ActorsSerializer
end