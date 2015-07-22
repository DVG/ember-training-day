class MoviesSerializer < ActiveModel::Serializer
  embed :ids, include: true
  attributes :id, :name, :year, :description

  has_many :appearances, serializer: AppearancesSerializer
end