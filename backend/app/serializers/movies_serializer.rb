class MoviesSerializer < ActiveModel::Serializer
  embed :ids, embed_in_root: true
  attributes :id, :name, :release_date, :year, :description

  has_many :appearances, serializer: AppearancesSerializer

  def release_date
    object.release
  end
end