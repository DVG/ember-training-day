class MoviesSerializer < ActiveModel::Serializer
  attributes :id, :name, :release_date, :year, :description, :characters, :actors

  def release_date
    object.release
  end

  def characters
    object.characters.map(&:id)
  end

  def actors
    object.actors.map(&:id)
  end
end