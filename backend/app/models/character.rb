class Character < ActiveRecord::Base
  has_many :appearances
  has_many :movies, through: :appearances
  has_many :actors, through: :appearances
end
