class AppearancesSerializer < ActiveModel::Serializer
  attributes :id

  has_one :character
  has_one :movie
  has_one :actor
end