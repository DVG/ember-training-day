class CharactersSerializer < ActiveModel::Serializer
  attributes :id, :name, :movies, :actors

  def movies
    object.movies.map(&:id)
  end

  def actors
    object.actors.uniq.map(&:id)
  end
end