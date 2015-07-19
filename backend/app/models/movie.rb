class Movie < ActiveRecord::Base
  has_many :appearances
  has_many :characters, through: :appearances
  has_many :actors, through: :appearances
end
