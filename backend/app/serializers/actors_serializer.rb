class ActorsSerializer < ActiveModel::Serializer
  attributes :id, :name, :characters, :movies

  def movies
    object.movies.map(&:id)
  end

  def characters
    object.characters.uniq.map(&:id)
  end
end